import tkinter as tk
from tkinter import filedialog as fd
from functools import partial

import pandas as pd

from random import randint
from sympy import randprime

from PIL import Image, ImageTk

keyFile = None
imgFile = None
currImg = None

encFile = None
pubFile = None
priFile = None
pinNmbr = None

origLabel = None
encrLabel = None

picrypt = tk.Tk()
picrypt.title("Picrypt - Send Encrypted Images")
picrypt.geometry("400x60")

def on_error(errorInd):
    
    errorCodes = ["You must submit a non-empty sender's name!",
                  "Your PIN must consist of a 4-digit number!",
                  "You are missing a file. Please try again.",
                  "This is not a valid encryption key text file."]
    
    error = tk.Tk()
    error.attributes('-topmost', 1)
    error.title("Entry Error!")
    error.geometry("280x55")

    errMsg = tk.Label(error, fg="red",
                      text=errorCodes[errorInd])
    errMsg.place(x=15, y=10)

def on_newConnect():
    
    connInfo = tk.Tk()
    connInfo.title("Picrypted Image Request")
    connInfo.geometry("300x130")

    guideLabel = tk.Label(connInfo,
                          text="Who will be sending you the image?")
    guideLabel.place(x=20, y=10)

    aliceLabel = tk.Label(connInfo, text="Sender:")
    aliceEntry = tk.Entry(connInfo, width=31)
    aliceLabel.place(x=20, y=35)
    aliceEntry.place(x=77, y=35)

    pinLabel = tk.Label(connInfo,
                        text="Create a 4-digit PIN to conceal the keys:")
    pinEntry = tk.Entry(connInfo, show="*", width=4)
    pinLabel.place(x=20, y=60)
    pinEntry.place(x=240, y=60)
    
    submit = tk.Button(connInfo, text="Submit",
                       command=partial(on_submit,
                                       connInfo,
                                       aliceEntry,
                                       pinEntry),
                       width=15, height=1)
    submit.place(x=95, y=85)

def on_submit(connInfo, alice, pin):
    connInfo.attributes('-topmost', 1)
    
    alice, pin = alice.get(), pin.get()
    
    if alice == "":
        on_error(0)
        return

    if not pin.isnumeric():
        on_error(1)
        return

    pin = int(pin)
    p = randprime(257, 787)
    
    prims = []
    for i in range(2, p):
        generated = set()
        for j in range(1, p):
            generated.add((i ** j) % p)
        if len(generated) == p - 1:
            prims.append(i)

    alpha = prims[randint(0, len(prims) - 1)]
    d = randint(2, p - 2)
    beta = (alpha ** d) % p

    with open(alice + "PubKeys.txt", "w") as pub:
        pub.write("Send this to " + alice + ":\n\n")
        pub.write("beta = " + str(beta) + "\n")
        pub.write("p = " + str(p) + "\n")
        pub.write("alpha = " + str(alpha) + "\n")

    with open(alice + "PriKey.txt", "w") as pri:
        pri.write("***MAKE SURE YOU HAVE YOUR PIN NUMBER!***\n")
        pri.write("Keep this file to decrypt " + alice + "'s image:\n\n")
        pri.write("d = " + str((d * pin) ** (pin // 300) - (pin % 100)))
                   
    success = tk.Tk()
    success.title("Image Request Successful!")
    success.geometry("400x160")

    label = tk.Label(success, text=alice + " can now send you an " + \
                     "encrypted image.\n\nThe public keys to give " + \
                     "to sender is in '" + alice + "PubKeys.txt'\n" + \
                     "and your private key is saved in '" + alice + \
                     "PriKey.txt'.\n\nThe private key is altered " + \
                     "until you provide the proper PIN number.\nMake " \
                     "sure to remember it for this transaction!")
    label.place(x=20, y=10)

    close = tk.Button(success, text="OK", width=15,
                      command=success.destroy)
    close.place(x=135, y=125)
                     
    connInfo.destroy()

def on_encryptImg():
    
    encrPg = tk.Tk()
    encrPg.title("Encrypt an Image")
    encrPg.geometry("400x100")

    guideLabel = tk.Label(encrPg,
                          text="Upload a encryption key text " +
                          "file and a JPG image to picrypt.")
    guideLabel.place(x=20, y=10)

    keyLabel = tk.Label(encrPg, text="[Key Text File (.txt)]")
    keyLabel.place(x=150, y=35)

    keyLoad = tk.Button(encrPg, text="Upload Key",
                        command=partial(on_keyload,
                                        encrPg,
                                        keyLabel),
                        width=15, height=1)
    keyLoad.place(x=35, y=35)
    
    upLabel = tk.Label(encrPg, text="[Image File (.jpg)]")
    upLabel.place(x=150, y=65)

    upload = tk.Button(encrPg, text="Upload JPG",
                       command=partial(on_upload,
                                       encrPg,
                                       upLabel),
                       width=15, height=1)
    upload.place(x=35, y=65)

    submit = tk.Button(encrPg, text="Picrypt!",
                       command=partial(on_encrypt,
                                       encrPg),
                       width=8, height=1)
    submit.place(x=320, y=50)

def on_keyload(encrPg, keyLabel):
    global keyFile
    encrPg.attributes('-topmost', 1)
    
    keyFile = fd.askopenfile(mode="r",
                         filetypes=[("Text Files", "*.txt")])

    if keyFile is None or not keyFile.name.endswith("PubKeys.txt"):
        keyLabel.configure(text="Key Upload Unsuccessful", fg="red")
        return

    keyLabel.configure(text="Sending as " + \
                       keyFile.name.split("/")[-1][: -11], fg="green")
    
def on_upload(encrPg, upLabel):
    global imgFile
    encrPg.attributes('-topmost', 1)
    
    imgFile = fd.askopenfile(mode="r",
                             filetypes=[("Jpg Files", "*.jpg")])
    
    if imgFile is None or not imgFile.name.endswith(".jpg"):
        upLabel.configure(text="Image Upload Unsuccessful", fg="red")
        return
    
    upLabel.configure(text=imgFile.name.split("/")[-1], fg="green")

def on_encrypt(encrPg):
    global origLabel, encrLabel
    encrPg.destroy()

    if (keyFile.name == None or
        imgFile.name == None):
        on_error(2)

    beta, p, alpha = None, None, None
    with open(keyFile.name, "r") as encrFile:
        script = encrFile.read()
        lines = script.split("\n")

        keySyntax = lambda x, y: \
                    x.startswith(y + " = ") and \
                    x[(len(y) + 3):].isnumeric()
        
        if not (keySyntax(lines[2], "beta") and
                keySyntax(lines[3], "p") and
                keySyntax(lines[4], "alpha")):
            on_error(3)
            return

        beta = int(lines[2][7:])
        p = int(lines[3][4:])
        alpha = int(lines[4][8:])

    image = Image.open(imgFile.name)
    resized = image.resize((300, 300))
    tkImage = ImageTk.PhotoImage(resized)

    picrypt.geometry("400x760")
    origLabel = tk.Label(picrypt, text="Original Image",
                         font=("Helvetica", 14, "bold"))
    origLabel.place(x=130, y=50)

    origImg = tk.Label(picrypt, image=tkImage)
    origImg.image = tkImage
    origImg.place(x=50, y=80)
    
    pixels = image.load()

    i = randint(2, p - 2)
    k_e = (alpha ** i) % p
    k_m = (beta ** i) % p
    iv = randint(0, 255)

    encrDf = pd.DataFrame(columns=['x', 'y', 'r', 'g', 'b'])

    feed = iv
    for x in range(image.size[0]):
        for y in range(image.size[1]):
            rgb = list(pixels[x, y][:3])
            for i in range(len(rgb)):
                rgb[i] ^= feed
                e_k = (rgb[i] * k_m) % p
                rgb[i] = e_k
                feed = e_k
            pixels[x, y] = tuple(rgb)
            encrDf = encrDf.append({'x': x,
                                    'y': y,
                                    'r': rgb[0],
                                    'g': rgb[1],
                                    'b': rgb[2]},
                                   ignore_index=True)
    
    resized = image.resize((300, 300))
    tkImage = ImageTk.PhotoImage(resized)
    
    encrLabel = tk.Label(picrypt, text="Picrypted Image",
                         font=("Helvetica", 14, "bold"))
    encrLabel.place(x=130, y=395)

    encrImg = tk.Label(picrypt, image=tkImage)
    encrImg.image = tkImage
    encrImg.place(x=50, y=425)

    encrDf.to_csv(imgFile.name.split("/")[-1] + "-Picrypt-" +
                  str(image.size[0]) + "x" + str(image.size[1]) + ".csv",
                  index=False)

    with open("SentKey-" + keyFile.name.split("/")[-1], "w") as pub:
        pub.write("Use to decrypt 'Picrypted-" + imgFile.name + "':\n\n")
        pub.write("k_e = " + str(k_e) + "\n")
        pub.write("iv = " + str(iv) + "\n")
        pub.write("p = " + str(p) + "\n")
    
def on_decryptImg():

    decrPg = tk.Tk()
    decrPg.title("Decrypt an Image")
    decrPg.geometry("360x200")
    decrPg.attributes('-topmost', 1)
    
    guideLabel = tk.Label(decrPg,
                          text="Upload the sender's decryption key " +
                          "file, your private key,\n and the CSV " +
                          "of pixel values. Finally, enter " +
                          "your PIN number.")
    guideLabel.place(x=20, y=15)
    
    upLabel = tk.Label(decrPg, text="[Pixel CSV File (.csv)]")
    upLabel.place(x=150, y=60)

    upload = tk.Button(decrPg, text="Upload CSV",
                       command=partial(on_getEncr,
                                       decrPg,
                                       upLabel),
                       width=15, height=1)
    upload.place(x=35, y=60)

    pubLabel = tk.Label(decrPg,
                        text="[Their Public Key Text File (.txt)]")
    pubLabel.place(x=150, y=90)

    pubLoad = tk.Button(decrPg, text="Public Key",
                        command=partial(on_getTheirKey,
                                        decrPg,
                                        pubLabel),
                        width=15, height=1)
    pubLoad.place(x=35, y=90)
    
    priLabel = tk.Label(decrPg,
                        text="[Your Private Key Text File (.txt)]")
    priLabel.place(x=150, y=120)

    priLoad = tk.Button(decrPg, text="Private Key",
                        command=partial(on_getMyKey,
                                        decrPg,
                                        priLabel),
                        width=15, height=1)
    priLoad.place(x=35, y=120)

    pinLabel = tk.Label(decrPg, text="Enter your PIN number:")
    pinEntry = tk.Entry(decrPg, show="*", width=4)
    pinLabel.place(x=35, y=150)
    pinEntry.place(x=170, y=150)

    decrypt = tk.Button(decrPg, text="Decrypt",
                        command=partial(on_decrypt,
                                        decrPg,
                                        pinEntry),
                        width=8, height=1)
    decrypt.place(x=260, y=150)

def on_getEncr(decrPg, upLabel):
    global encFile
    decrPg.attributes("-topmost", 1)
    
    encFile = fd.askopenfile(mode="r",
                             filetypes=[("CSV Files", "*.csv")])
    
    if encFile is None or not encFile.name.endswith(".csv"):
        upLabel.configure(text="CSV Upload Unsuccessful", fg="red")
        return
    
    upLabel.configure(text=encFile.name.split("/")[-1], fg="green")

def on_getTheirKey(decrPg, pubLabel):
    global pubFile
    decrPg.attributes('-topmost', 1)
    
    pubFile = fd.askopenfile(mode="r",
                             filetypes=[("Text Files", "*.txt")])

    if pubFile is None or not pubFile.name.endswith("PubKeys.txt"):
        pubLabel.configure(text="Key Upload Unsuccessful", fg="red")
        return

    pubLabel.configure(text=pubFile.name.split("/")[-1][8: -11] +
                       "'s Sent Public Key", fg="green")
    


def on_getMyKey(decrPg, priLabel):
    global priFile
    decrPg.attributes('-topmost', 1)
    
    priFile = fd.askopenfile(mode="r",
                             filetypes=[("Text Files", "*.txt")])

    if priFile is None or not priFile.name.endswith("PriKey.txt"):
        priLabel.configure(text="Key Upload Unsuccessful", fg="red")
        return

    priLabel.configure(text="Your Private Key with " + \
                       priFile.name.split("/")[-1][:-10], fg="green")

def on_decrypt(decrPg, pinEntry):
    global encrLabel, origLabel
    if encrLabel != None and \
       origLabel != None:
        encrLabel.destroy()
        origLabel.destroy()
    
    pin = int(pinEntry.get())
    decrPg.destroy()
    
    if (encFile.name == None or
        pubFile.name == None or
        priFile.name == None):
        on_error(2)

    keySyntax = lambda x, y: \
                x.startswith(y + " = ") and \
                x[(len(y) + 3):].isnumeric()
    
    k_e, iv, p, d = None, None, None, None
    with open(pubFile.name, "r") as decrFile:
        script = decrFile.read()
        lines = script.split("\n")
        
        if not (keySyntax(lines[2], "k_e") and
                keySyntax(lines[3], "iv") and
                keySyntax(lines[4], "p")):
            on_error(3)
            return

        k_e = int(lines[2][6:])
        iv = int(lines[3][5:])
        p = int(lines[4][4:])

    with open(priFile.name, "r") as kpriFile:
        script = kpriFile.read()
        lines = script.split("\n")

        if not keySyntax(lines[3], "d"):
            on_error(3)
            return

        d = int(lines[3][4:])
        d = round(((d + (pin % 100)) ** (1 / (pin // 300))) / pin)

    encFileName = encFile.name.split("/")[-1]

    k_m = (k_e ** d) % p
    k_m_inv = 0
    for _ in range(p):
        k_m_inv += 1
        if (k_m * k_m_inv) % p == 1:
            break
    
    decrDf = pd.read_csv(encFile.name)
    image = Image.new(mode="RGB", size=(int(encFileName[-11: -8]),
                                        int(encFileName[-7: -4])))
    
    encPixels = image.load()
    decPixels = image.load()
    
    for index, row in decrDf.iterrows():
        encPixels[int(row["x"]), int(row["y"])] = \
                                 (row["r"], row["g"], row["b"])
        
    resized = image.resize((300, 300))
    tkImage = ImageTk.PhotoImage(resized)

    picrypt.geometry("400x760")
    encrLabel = tk.Label(picrypt, text="Picrypted Image",
                         font=("Helvetica", 14, "bold"))
    encrLabel.place(x=130, y=50)

    encrImg = tk.Label(picrypt, image=tkImage)
    encrImg.image = tkImage
    encrImg.place(x=50, y=80)

    feed = iv
    for index, row in decrDf.iterrows():
        rgb = []
        for color in [int(row["r"]), int(row["g"]), int(row["b"])]:
            rgb.append(((color * k_m_inv) % p) ^ feed)
            feed = color
        decPixels[int(row["x"]), int(row["y"])] = tuple(rgb)
        
    resized = image.resize((300, 300))
    tkImage = ImageTk.PhotoImage(resized)
    
    origLabel = tk.Label(picrypt, text="Original Image",
                         font=("Helvetica", 14, "bold"))
    origLabel.place(x=130, y=395)
    
    origImg = tk.Label(picrypt, image=tkImage)
    origImg.image = tkImage
    origImg.place(x=50, y=425)

    image.save("Decrypted-" + encFile.name.split("/")[-1][:-4] + ".jpg")    
        
button = lambda txt, cmd: \
    tk.Button(picrypt, text=txt, command = cmd, width=15, height=1)
place = lambda bttn, x: bttn.place(x=x, y=18)

place(button("Request Image", on_newConnect), 18)
place(button("Encrypt Image", on_encryptImg), 143)
place(button("Decrypt Image", on_decryptImg), 268)
