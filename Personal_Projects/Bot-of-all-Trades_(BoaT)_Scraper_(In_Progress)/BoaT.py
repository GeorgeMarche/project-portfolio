import tkinter.font as font
import threading as th
import random as rand
import tkinter as tk
import pandas as pd
import time
import re

from datetime import datetime
from functools import partial

from tkinter import ttk
from tkinter import scrolledtext as st
from tkinter.constants import DISABLED, ACTIVE, NORMAL

from selenium.webdriver.common.keys import Keys
from selenium import webdriver

from lxml import etree

#############
# Section 0 #
# CODE MENU #
#############
#
# How to Navigate:
#
# > 1. Click Ctrl+F
# > 2. Type "# Section "
# > 3. Type the section #

"""

Section 0: CODE MENU
Section 1: DATA
Section 2: RUN & STOP
Section 3: MAIN WINDOW
Section 4: DRIVER
Section 5: SCRAPING
Section 6: INFO CHECK
Section 7: TAB COMMANDS
Section 8: MY BOTS
Section 9: EDIT INFO
Section 10: BOT CLOSING
Section 11: MAIN BUTTONS

"""


#############
# Section 1 #
# DATA      #
#############
#
# - 1.A: Init Nulls
# - 1.B: States
# - 1.C: Bots
# - 1.D: Scrapers
# - 1.E: Queue
# - 1.F: My Info
# - 1.G: Init Data


# --------------- #
# 1.A: Init Nulls #
# --------------- #

NA = lambda n: [None] * n

driver, execThread = NA(2)

newRow, radios = {}, []
catTable, selTable, prdTable = NA(3)
optVars = NA(4)

smtSctn, ctgSeek, fltSeek, schSeek, prdSeek, modSeek, cktSeek = NA(7)
categs, filtrs, srchbr, prdcts, modfrs, chkout = NA(6)


# ----------- #
# 1.B: States #
# ----------- #

states = ("AL", "AK", "AS", "AZ", "AR", "CA", "CO", "CT", "DE",
          "DC", "FM", "FL", "GA", "GU", "HI", "ID", "IL", "IN", "IA",
          "KS", "KY", "LA", "ME", "MH", "MD", "MA", "MI", "MN", "MS",
          "MO", "NT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND",
          "MP", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN",
          "TX", "UT", "VT", "VI", "VA", "WA", "WV", "WI", "WY")


# --------- #    
# 1.C: Bots #
# --------- #

try:
    
    botsDF = pd.read_csv('myBots.csv')
    
except:

    bCols = ['BotID', 'IsRunning',
            'InitDate', 'LastEditDate',
            'StoreBrand', 'StoreURL',
            'CatParams_o', 'FltParams_o',
            'SchParams_o', 'ProductList',
            'Modifiers_o', 'CartChkout']
    
    botsDF = pd.DataFrame(columns=bCols)


# ------------- #
# 1.D: Scrapers #
# ------------- #

try:
    
    scrsDF = pd.read_csv("scrapers.csv")

except:

    sCols = ['ScraperID', 'Store', 'Category_o', 'Filters_o',
            'Product', 'ProductMods_o', 'TimeOrRange']

    scrsDF = pd.DataFrame(columns=sCols)


# ---------- #
# 1.E: Queue #
# ---------- #

qCols = ['ScraperID', 'Store', 'StoreURL', 'Category_o',
         'Filters_o', 'Product', 'ProductMods_o', 'ExecTime_o']
queueDF = pd.DataFrame(columns=qCols)


# ------------ #
# 1.F: My Info #
# ------------ #

error = 'FIL'

try:
    
    infoFile = open('info.txt', 'r')
    error = 'TXT'
    lines = [l[:-1].split(': ') for l in infoFile.readlines()]

    info = {}
    for line in lines:

        error = 'VAL'
        info[line[0]] = line[1]

    error = 'FIL'
    infoFile.close()

except:

    raiseError(['INF', error])


# --------------- #
# 1.G: Init Data  #
# --------------- #

initBots, initScrs, initInfo = botsDF, scrsDF, info.copy()


##############
# Section 2  #
# RUN & STOP #
##############
#
# - 2.A run()
# - 2.B stop()


# ---------- #
# 2.A: run() #
# ---------- #

def run():

    isRunning = True
    execTime = None
    error = 'DTF'
    
    try:
        
        for index, row in scrsDF.iterrows():
        
            error = 'VAL'
            scrID = row['ScraperID']
            store = row['Store']
            URL = botsDF[botsDF.StoreBrand == store].StoreURL

            category = row['Category_o']
            filt4ers = row['Filters_o']
            product = row['Product']
            productMods = row['ProductMods_o']

            timeOrRange = row['TimeOrRange']
            error = 'EXC'
            
            if len(timeOrRange) == 17:

                mo = int(timeOrRange[:2])
                dy = int(timeOrRange[3:5])
                yr = int(timeOrRange[6:8]) + 2000

                hr = int(timeOrRange[9:11])
                mn = int(timeOrRange[12:14])
                sc = int(timeOrRange[15:17])

                execTime = datetime.datetime(yr, mo, dy, hr, mn, sc)
                
            else:

                rangeIter = timeOrRange.split()
                iters = int(rangeIter[1][1: -1])
                
                lo = int(rangeIter.split('-')[0])
                hi = int(rangeIter.split('-')[1])
                hitTime = rand.randrange(lo, hi)

                execTime = datetime.now() + \
                           datetime.timedelta(minutes=hitTime)

            error = 'DTF'
            queueDF.loc[len(queueDF.index)] = [
                scrID, store, URL, category, filters,
                product, productMods, execTime]

    except:

        raiseError(['RUN', error])
        

# ----------- #
# 2.B: stop() #
# ----------- #

def stop():

    error = 'VAL'
    
    try:
        
        isRunning = False

    except:

        raiseError(['STP', error])

    
###############
# Section 3   #
# MAIN WINDOW #
###############
#
# - 3.A: Init
# - 3.B: My Bots
# - 3.C: My Info
# - 3.D: My Logs
# - 3.E: Help Me
# - 3.F: My Scrapers


# --------- #
# 3.A: Init #
# --------- #

bot = tk.Tk()
bot.state('zoomed')

bot.configure(bg='steelblue')
bot.title("Bot of all Trades | Main Dashboard")
bot.protocol("WM_DELETE_WINDOW", lambda: closeBot())

isRunning = False


# ------------ #
# 3.B: My Bots #
# ------------ #

cols = ['BotID', 'IsRunning', 'StoreBrand',
        'Categories', 'SearchBar', 'Filters']

botsTable = ttk.Treeview(bot, height=11)
botsTable['columns'] = cols

widths = [170, 50, 120, 60, 60, 60]
colTxts = ['Bot ID', 'Active', 'Store Brand',
           'Category', 'Search', 'Filters']

botsTable.column("#0", width=0, stretch='NO')
botsTable.heading("#0",text="",anchor='center')

for i in range(len(cols)):
    
    botsTable.column(cols[i], anchor='center', width=widths[i])
    botsTable.heading(cols[i],text=colTxts[i],anchor='center')

for index, row in botsDF.iterrows():

    YorN = lambda col: 'Yes' if row[col] != 'None' else 'No'
    categories = YorN('CatParams_o')
    searchBar = YorN('SchParams_o')
    filters = YorN('FltParams_o')
    
    botsTable.insert(parent='', index='end', iid=index, text="",
                     values=(row['BotID'], row['IsRunning'],
                             row['LastEditDate'], row['StoreBrand'],
                             categories, searchBar, filters, "Edit"))
                            
botsTable.place(x=0, y=63)


# ------------ #
# 3.C: My Info #
# ------------ #

infoTable = ttk.Treeview(bot, height=11)
infoTable['columns'] = ('Attribute', 'Value')

infoTable.column("#0", width=0, stretch='NO')
infoTable.column("Attribute", anchor='center', width=140)
infoTable.column("Value", anchor='center', width=380)

infoTable.heading("#0",text="",anchor='center')
infoTable.heading("Attribute",text="[ATTRIBUTE]",anchor='center')
infoTable.heading("Value",text="[VALUE]",anchor='center')

i = 0
for k in info.keys():

    infoTable.insert('', 'end', i, values=(k + ':', info[k]))
    i += 1

infoTable.place(x=0, y=63)


# ------------ #
# 3.D: My Logs #
# ------------ #

logsTable = ttk.Treeview(bot, height=11)
logsTable['columns'] = ('Date/Time', 'Activity')

logsTable.column("#0", width=0, stretch='NO')
logsTable.column("Date/Time", anchor='center', width=100)
logsTable.column("Activity", anchor='center', width=420)

logsTable.heading("#0",text="",anchor='center')
logsTable.heading("Date/Time",text="Date/Time",anchor='center')
logsTable.heading("Activity",text="Activity",anchor='center')

logsTable.place(x=0, y=63)

logFile = open("log.txt", "a")


# ------------ #
# 3.E: Help Me #
# ------------ #

helpTable = ttk.Treeview(bot, height=11)
helpTable['columns'] = ('Topic', 'Details')

helpTable.column("#0", width=0, stretch='NO')
helpTable.column("Topic", anchor='center', width=200)
helpTable.column("Details", anchor='center', width=320)

helpTable.heading("#0",text="",anchor='center')
helpTable.heading("Topic",text="Topic",anchor='center')
helpTable.heading("Details",text="Details",anchor='center')

helpTable.insert('', 'end', 0,
                 values=('Under Construction',
                         'Help Window Coming Soon!'))

helpTable.place(x=0, y=63)


# ---------------- #
# 3.F: My Scrapers #
# ---------------- #

scrsTable = ttk.Treeview(bot, height=15)
scrsTable['columns'] = sCols

widths = [120, 100, 160, 200, 240, 150, 150]
colTxts = ['ID', 'Store', 'Category', 'Filters',
           'Product', 'Modifications', 'Time/Range']

scrsTable.column("#0", width=0, stretch='NO')
scrsTable.heading("#0", text="", anchor='center')

for i in range(len(sCols)):
    
    scrsTable.column(sCols[i], anchor='center', width=widths[i])
    scrsTable.heading(sCols[i], text=colTxts[i], anchor='center')

for index, row in scrsDF.iterrows():

    scrsTable.insert(index, text="",
                     values=(row['ScraperID'], row['Store'],
                             row['Category_o'], row['Filters_o'],
                             row['Product'], row['ProductMods_o'],
                             row['TimeOrRange'], 'Open', 'X'))

scrsTable.place(y=389)


#############
# Section 4 #
# DRIVER    #
#############
#
# - 4.A: startDriver()
# - 4.B: getLink()


# ------------------ #
# 4.A: startDriver() #
# ------------------ #

def startDriver():

    global driver

    cd_path = "C:/Users/gmarc/AppData/Local/Programs/" + \
              "Python/Python39/BoaT/chromedriver.exe"
    driver = webdriver.Chrome(executable_path=cd_path)


# -------------- #
# 4.B: getLink() #
# -------------- #

def getLink(url: str):

    global driver

    driver.get(url)

    
#############
# Section 5 #
# SCRAPING  #
#############
#
# - 5.A: getCategs()
# - 5.B: getFiltrs()
# - 5.C: getSrchbr()
# - 5.D: getPrdcts()
# - 5.E: getModfrs()


# ---------------- #
# 5.A: getCategs() #
# ---------------- #

def getCategs(rmStrL: tk.Label,
              rmStrE: tk.Entry,
              ctTbl: ttk.Treeview
              ):
    
    global driver, categs
    
    error = 'VAL'

    try:

        locM, valM, clk, locD, valD, locS, valS, attrib = categs[0:8]
        bttns, ctg, url = [], None, None

        elmM = driver.find_element(locM, valM)
        
        if clk == 'Y':

            elmM.click()

        elmD = elmM if not valD else driver.find_element(locD, valD)
        bttns = elmD.find_elements(locS, valS)
       
        for bttn in bttns:

            error = 'ATR'
            ctg = bttn.get_attribute(attrib)
            url = "--"

            if bttn.tag_name == 'a':

                url = bttn.get_attribute('href')

            error = 'ROW'
            categs[9].append([ctg, url])
            ctTbl.insert('', 'end', values=(ctg, url))

        error = 'TKE'
        rmStrL.configure(bg='green1')
        rmStrE.configure(state=NORMAL)

        error = 'DRV'
        driver.close()
        driver.quit()
        
    except:
        
        raiseError(['CTG', error])
        driver.close()
        driver.quit()


# ---------------- #
# 5.B: getFiltrs() #
# ---------------- #

def getFiltrs(ftTbl: ttk.Treeview):

    global driver, filtrs
    
    error = 'VAL'
    
    try:

        grps, slns = filtrs[0], filtrs[2]
        grpDict = {}
        
        error = 'TBL'
        insert = lambda x, v: ftTbl.insert('', 'end', x, values=v)
        i = 0

        error = 'ELM'

        for grp in grps:

            grpElems = driver.find_elements(grp[0], grp[1])

            for g in grpElems:

                error = 'ATR'
                aGrp = g.get_attribute(grp[2])

                error = 'ROW'
                gPair = (grp[2], aGrp)
                grpDict[gPair] = []
                insert(i, (aGrp, '---'))
                
                i += 1
                
                for sln in slns:

                    error = 'ELM'

                    if sln[0] == 'xpath':

                        error = 'VAL'
                        tag = g.tag_name
                        xpath = "//" + tag + "[@" + \
                                grp[2] + "='" + \
                                aGrp + "']" + sln[1]
                        
                        slnElems = g.find_elements(sln[0], xpath)
                        
                    else:

                        slnElems = g.find_elements(sln[0], sln[1])

                    for s in slnElems:

                        error = 'ATR'
                        aSln = s.get_attribute(sln[2])

                        error = 'ROW'
                        grpDict[gPair].append([sln[2], aSln])
                        insert(i, ('---', aSln))

                        i += 1

        error = 'DRV'
        driver.close()
        driver.quit()
        
    except:

        raiseError(['FLT', error])
        driver.close()
        driver.quit()


# ---------------- #
# 5.C: getSrchbr() #
# ---------------- #

def getSrchbr(sbTbl: ttk.Treeview):

    global driver, srchbr
    
    error = 'VAL'
    
    try:

        inpL, inpV = srchbr[0]
        btnL, btnV = srchbr[1]
        error = 'ELM'
        eType = None
        types = [None] * 2

        inp = driver.find_element(inpL, inpV)
        btn = driver.find_element(btnL, btnV)
        
        eType = lambda x: x.tag_name
        types = ["input", "button"]

        found = lambda x: True if x else False

        inElm = found(inp)
        btElm = found(btn)

        isTag = lambda x, y: True if eType(x) == y else False

        inTag = isTag(inp, types[0])
        btTag = isTag(btn, types[1])

        isPrm = lambda x, y: "Yes" if x and y else "No"

        isInp = isPrm(inElm, inTag)
        isBtn = isPrm(btElm, btTag)

        srchbr.append([isInp, isBtn])
        
        sbTbl.insert('', 'end', 0, values=(isInp, isBtn))

        error = 'DRV'
        driver.close()
        driver.quit()

    except:

        raiseError(['SCH', error])
        driver.close()
        driver.quit()
        

# ---------------- #
# 5.D: getPrdcts() #
# ---------------- #

def getPrdcts(pdTbl: ttk.Treeview,
              nxTbl: ttk.Treeview,
              ):

    global driver, prdcts
    
    error = 'VAL'  

    try:
    
        locPd, valPd, attrib = prdcts[0:3]
        locNb, valNb = prdcts[3:5]
        prd, url = None, None
        error = 'ELM'
        
        elems = driver.find_elements(locPd, valPd)

        if prdcts[4]:

            nxElm = driver.find_element(locNb, valNb)
            nxBtn = nxElm.get_tag() == 'button'
            
            if nxElm and nxBtn:

                nxTbl.insert('', 'end', values=("Yes"))

            else:

                nxTbl.insert('', 'end', values=("No"))

        else:

            nxTbl.insert('', 'end', values=("N/A"))

        for elem in elems:

            error = 'ATR'
            prd = elem.get_attribute(attrib)
            url = elem.get_attribute('href')

            error = 'ROW'
            prdcts[5].append([prd, url])
            pdTbl.insert('', 'end', values=(prd, url))

        error = 'DRV'
        driver.close()
        driver.quit()

    except:

        raiseError(['PRD', error])
        driver.close()
        driver.quit()


# ---------------- #
# 5.E: getModfrs() #
# ---------------- #

def getModfrs(mdTbl: ttk.Treeview,
              vrTbl: ttk.Treeview
              ):

    
    global driver, categs, prdcts, modfrs
    
    error = 'VAL'  

    try:
    
        for row in mdTbl.get_children():

            vals = mdTbl.item(row)['values']
            ctgs, locG, valG, locO, valO, atrO, veri = vals
            ctgs = ctgs.split(', ') if ctgs != '' else []

            num = 0
            dnm = str(len(ctgs))
            gAtr = lambda e, a: e.get_attribute(a)
            
            for ctg in ctgs:

                error = 'ROW'
                curNum = num
                vrTbl.insert('', 'end', values=(ctg, '----', '----',
                                                '-', '-', '----'))
                
                for cat in categs[9]:

                    if ctg in cat[0].lower():

                        error = 'ROW'
                        vrTbl.insert('', 'end',
                                     values=('--', cat[0], '----',
                                             '-', '-', '----'))
                        
                        error = 'URL'
                        getLink(cat[1])

                        error = 'ELM'
                        prods = driver.find_elements(prdcts[0],
                                                     prdcts[1])

                        for prod in prods:

                            error = 'ELM'
                            atrP = gAtr(prod, prdcts[2])

                            error = 'ROW'
                            urlP = gAtr(prod, 'href')
                            
                            if urlP:

                                error = 'URL'
                                getLink(urlP)

                            else:
                                
                                error = 'ELM'
                                prod.click()
                                
                            error = 'ELM'
                            gpElem = driver.find_element(locG, valG)
                            opElms = gpElem.find_elements(locO, valO)

                            error = 'VAL'
                            grpV = "Y" if gpElem else "N"
                            optV = "Y" if opElms else "N"

                            error = 'ROW'
                            vrTbl.insert('', 'end', 
                                         values=('--', '----', atrP,
                                                 grpV, optV, '----'))

                            if ("N" in [grpV, optV]) and \
                               all([gAtr(oE, atrO) for oE in opElms]):

                                continue

                            for oE in opElms:

                                error = 'ROW'
                                vrTbl.insert('', 'end',
                                             values=('--', '----',
                                                     '----', '-', '-',
                                                     gAtr(oE, atrO)))
                                
                            num += 1
                            break

                        if num > curNum:

                            break

            error = 'VAL'
            veri = str(num) + '/' + dnm

            error = 'ROW'
            mdTbl.item(row, values=vals[:-1]+[veri])
            
        error = 'DRV'
        driver.close()
        driver.quit()
        
    except:

        raiseError(['MOD', error])
        driver.close()
        driver.quit()
        

# ---------------- #
# 5.F: getChkout() #
# ---------------- #
def getChkout(vrTbl: ttk.Treeview):
    
    global driver, chkout

    error = 'VAL'

    pass

    
##############
# Section 6  #
# INFO CHECK #
##############
#
# - 6.A: infoCheck()
# - 6.B: raiseError()


# ---------------- #
# 6.A: infoCheck() #
# ---------------- #

def infoCheck():

    issues = set()

    noDS = lambda txt: txt.replace('-', '').replace(' ', '')
    noDSIsAlpha = lambda txt: noDS(txt).isalpha()

    if 'First Name' in info and \
       not noDSIsAlpha(info['First Name']):
        
        issues.add('FNM')

    if 'Last Name' in info and \
       not noDSIsAlpha(info['Last Name']):
        
        issues.add('LNM')

    if 'Email' in info:
        
        email = info['Email'].split('@')
        
        if len(email) != 2 or \
           not "." in email[1] or \
           not all(em.replace(".", "").isalnum() \
                   for em in email):
            
            issues.add('EML')

    if 'Phone' in info and \
       len(info['Phone']) != 10 or \
       not info['Phone'].isnumeric():
        
        issues.add('PHN')

    if 'Address' in info and \
       not (noDS(info['Address']).isalnum() and \
       len(info['Address'].split()) > 2):
        
        issues.add('ADR')

    if 'Apt/Unit' in info and \
       not info['Apt/Unit'].isalnum() and \
       info['Apt/Unit'] != "":
        
        issues.add('APT')

    if 'City' in info and \
       not noDSIsAlpha(info['City']):
        
        issues.add('CTY')

    if 'State' in info and \
       info['State'] not in states:
        
        issues.add('STT')

    if 'Zip' in info and \
       not info['Zip'].isnumeric() or \
       len(info['Zip']) != 5:
        
        issues.add('ZIP')

    if 'CC Number' in info and \
       len(info['CC Number']) != 16 or \
       not info['CC Number'].isnumeric():
        
        issues.add('CCN')

    exp = info['Exp Date']
    mos = list(range(1, 13))
    
    if 'Exp Date' in info and \
       len(exp) != 5 or \
       not exp[:2].isnumeric() or \
       int(exp[:2]) not in mos or \
       exp[2] != '/' or \
       not exp[3:].isnumeric() or \
       int(exp[3:]) < 22:
        
        issues.add('EXP')

    if 'CVV' in info and \
       len(info['CVV']) != 3 or \
       not info['CVV'].isnumeric():
        
        issues.add('CVV')

    if issues == set():
        
        if not switch['bg'] == 'red':
            
            log("No field value issues found")
            return True

    else:
        
        log("ERROR: a field value is incorrect")
        raiseError(issues)
        return False


# ----------------- #
# 6.B: raiseError() #
# ----------------- #
 
def raiseError(issues: list):

    error = tk.Toplevel()
    error.title("ERROR: Improper Values!")

    ht = str(20 + 20*len(issues))
    error.geometry("220x" + ht)

    text = []
    font = ('Futura', 9, 'bold')

    issue = lambda i, t: text.append(t) if i in issues else None
    
    issue("CTG", "NEW BOT (CATEGORY):")
    issue("FLT", "NEW BOT (FILTER):")
    issue("SCH", "NEW BOT (SEARCH):")
    issue("PRD", "NEW BOT (PRODUCT):")
    issue("MOD", "NEW BOT (MODIFIER):")
    issue("CHK", "NEW BOT (CHECKOUT):")
    issue("NEW", "NEW BOT WINDOW:")
    issue("RUN", "RUN BOAT SCRAPING:")
    issue("STP", "STOP BOAT SCRAPING:")
    issue("BYL", "ELEMENT BY LOCATOR:")
    issue("INF", "INFO TEXT DATA:")
    issue("EDT", "EDIT INFO WINDOW:")

    issue("DRV", "Fix driver file path")
    issue("URL", "Enter a proper URL")
    issue("FIL", "Can't open/close file")
    issue("TXT", "Can't read text file")
    
    issue("VAL", "Fix input values")
    issue("STR", "String is invalid")
    issue("EXC", "Fix scraper exec time")
    issue("DTF", "Bad scraper DF row")
    
    issue("ATR", "Fix ID attrib value")
    issue("XPA", "Check xpath value")
    issue("ELM", "No web elements found")
    issue("TKE", "Tk elem not found")
    
    issue("TBL", "Table is invalid")
    issue("ROW", "Row data isn't valid")
    
    issue("FNM", "FIRST NAME: A-Z, -, [ ]")
    issue("LNM", "LAST NAME: A-Z, -, [ ]")
    issue("EML", "EMAIL: improper syntax")
    issue("PHN", "PHONE: 10 #s ONLY")
    
    issue("ADR", "ADDRESS: A-Z, #, -, >2x [ ]")
    issue("APT", "APT/UNIT: A-Z, #")
    issue("CTY", "CITY: A-Z, -, [ ]")
    issue("STT", "STATE: 2-letter abbr")
    issue("ZIP", "ZIP: #####")
    
    issue("CCN", "CCN: 16 #s ONLY")
    issue("EXP", "EXP DATE: MM/YY")
    issue("CVV", "CVV: ###")

    for i in range(len(text)):

        err = tk.Label(error, text=text[i], font=font)
        err.place(x=10, y=20*i+10)

    ok = tk.Button(error, width=3, text="Ok", command=error.destroy)
    ok.place(x=177, y=int(ht)-34)

    
################
# Section 7    #
# TAB COMMANDS #
################
#
# - 7.A: log()
# - 7.B: onSwitch()
# - 7.C: Switch tabs


# ---------- #
# 7.A: log() #
# ---------- #

def log(text: str):

    now = str(datetime.now())[:-7]
    timestamp = now[-8:] + " " + now[5:7] + \
                "/" + now[8:10] + "/" + now[2:4]
    
    logsTable.insert('', 'end', values=(timestamp, text))
    logFile.write("[" + timestamp + "] " + text + "\n")


# --------------- #
# 7.B: onSwitch() #
# --------------- #
    
def onSwitch():
    
    if switch.cget('bg') == 'green1':
        
        if infoCheck():
            
            log("STARTING BoaT scrapers.")
            run()

            newBaseBot.configure(state=DISABLED, bg="red")
            newScraper.configure(state=DISABLED, bg="red")
            editMyInfo.configure(state=DISABLED, bg="red")            
            switch.configure(bg='red', fg='white', text="STOP")
            
        return

    log("ENDING BoaT scrapers")
    stop()

    newBaseBot.configure(state=NORMAL, bg="yellow")
    newScraper.configure(state=NORMAL, bg="yellow")
    editMyInfo.configure(state=NORMAL, bg="yellow")
    switch.configure(bg='green1', fg='black', text="START")


# ---------------- #
# 7.C: Switch tabs #
# ---------------- #

def onMyBots():

    adjustTabs('B')
    return

    
def onMyInfo():
    
    adjustTabs('I')
    return


def onMyLogs():
    
    adjustTabs('L')
    return


def onHelpMe():
    
    adjustTabs('H')
    return

        
#############
# Section 8 #
# MY BOTS   #
#############
#
# - 8.A: onFixCategs()
# - 8.C: onFixFiltrs()
# - 8.H: onFixModfrs()
# - 8.K: onFixChkout()
#
# - 8.E: onDelFltrRow()
# - 8.J: onDelMdfrRow()
# - 8.M: onDelChktRow()
#
# - 8.B: onCategsSeek()
# - 8.D: onFiltrsSeek()
# - 8.F: onSrchbrSeek()
# - 8.G: onPrdctsSeek()
# - 8.I: onModfrsSeek()
# - 8.L: onChkoutSeek()
#
# - 8.N: onCfgState()
# - 8.O: onSaveSection()
#
# - 8.P: onNewBotRadio()
# - 8.Q: onNewBaseBot()
# - 8.r: onNewScraper()


# ------------------ #
# 8.A: onFixCategs() #
# ------------------ #

def onFixCategs(rStE: tk.Entry,
                catT: ttk.Treeview):

    global categs
    
    error = 'VAL'

    try:

        error = 'TKE'
        cats = categs[9]
        rSt = rStE.get().split(', ')
        categs[8] += rSt
        
        for t in rSt:

            error = 'VAL'
            t = t.split('->')
            rp = '' if len(t) != 2 else t[1]
            rm = t[0]

            for i in range(len(cats)):

                error = 'STR'
                cats[i][0] = cats[i][0].replace(rm, rp)

                error = 'ROW'
                catT.item(i, text="", values=(cats[i][0], cats[i][1]))

            rStE.delete(0, 'end')
            categs[9] = cats
            log("CATEGORY NAMES: '" + rm + "' with '" + rp + "'.")
            
    except:
        
        raiseError(['CTG', error])


# ------------------- #
# 8.B: onCategsSeek() #
# ------------------- #

def onCategsSeek(url: str,
                stVs: list[tk.StringVar],
                ents: list[[int, int, tk.Entry]],
                rStL: tk.Label,
                rStE: tk.Entry,
                slnT: ttk.Treeview,
                catT: ttk.Treeview
                ):
    
    global driver, ctgSeek, categs
    
    error = 'VAL'
    
    try:

        for item in slnT.get_children():

            slnT.delete(item)
            
        for item in catT.get_children():
            
            catT.delete(item)
        
        error = 'TKE'
        ctgSeek['state'] = DISABLED
        
        error = 'VAL'
        locM, clk, locD, locS = [s.get() for s in stVs]
        valM, valD, valS, atr = [e[2].get() for e in ents]
   
        error = 'DRV'
        log("STARTING DRIVER.")
        startDriver()

        error = 'URL'
        log("Accessing URL.")
        getLink(url)
            
        log("Seeking categories & links.")
        categs = [locM, valM, clk,
                  locD, valD,
                  locS, valS, atr,
                  [], [], []]
        getCategs(rStL, rStE, catT)

        error = 'TKE'
        ctgSeek['state'] = NORMAL
    
    except:

        raiseError(['CTG', error])


# ------------------ #
# 8.C: onFixFiltrs() #
# ------------------ #

def onFixFiltrs(grpC: bool,
                locM: tk.StringVar,
                valE: tk.Entry,
                atrE: tk.Entry,
                fltT: ttk.Treeview
                ):

    global filtrs
    
    error = 'VAL'
    
    try:
            
        try:

            i = int(fltT.get_children()[-1]) + 1
            
        except:

            i = 0
                
        loc, val, atr = locM.get(), valE.get(), atrE.get()

        if '' not in [val, atr]:

            error = 'ROW'
            fltT.insert('', 'end', i, values=(loc, val, atr))
            error = 'VAL'

            if filtrs == None:

                filtrs = [[], None, []]
                
            if grpC:
                
                filtrs[0].append([loc, val, atr])
                
            else:
                
                filtrs[2].append([loc, val, atr])

            error = 'TKE'
            valE.delete(0, 'end')
            atrE.delete(0, 'end')
        
    except:

        raiseError(['FLT', error])


# ------------------- #           
# 8.D: onFiltrsSeek() #
# ------------------- #

def onFiltrsSeek(url: str,
                 clkM: tk.StringVar,
                 fltT: ttk.Treeview,
                 ):

    global driver, categs, filtrs, fltSeek
    
    error = 'TKE'
    
    try:
            
        for item in fltT.get_children():
            
            fltT.delete(item)

        fltSeek['state'] = DISABLED

        error = 'DRV'
        log("STARTING DRIVER")
        startDriver()
        
        try:
            
            error = 'ROW'
            url = categs[10][1]
            
        except:

            error = 'VAL'
         
        error = 'URL'
        log("Accessing URL")
        getLink(url)

        error = 'VAL'
        log("Setting Filter Click:")
        clkG = clkM.get()
        filtrs[1] = [clkG]
        getFiltrs(fltT)

        error = 'TKE'
        fltSeek['state'] = NORMAL

    except:

        raiseError(['FLT', error])


# ------------------- #
# 8.E: onDelFltrRow() #
# ------------------- #

def onDelFltrRow(grpC: bool,
                 fltT: ttk.Treeview):

    global filtrs
    
    error = 'ROW'

    try:
        
        ind = 0 if grpC else 2

        selItem = fltT.selection()[0]
        vals = fltT.item(selItem)['values']
        
        fltT.delete(selItem)
        error = 'VAL'
        
        for item in filtrs[ind]:

            if vals == item:

                filtrs[ind].remove(item)
                break
                             
    except:

        raiseError(['FLT', error])

        
# ------------------- #
# 8.F: onSrchbrSeek() #
# ------------------- #

def onSrchbrSeek(url: str,
                 stVs: list[tk.StringVar],
                 inpE: tk.Entry,
                 btnE: tk.Entry,
                 schT: ttk.Treeview
                 ):

    global driver, srchbr, schSeek
    
    error = 'TKE'
    
    try:

        schSeek['state'] = DISABLED

        error = 'DRV'
        log("STARTING DRIVER.")
        startDriver()

        error = 'URL'
        log("Accessing URL.")
        getLink(url)

        error = 'VAL'
        srchbr = [[stVs[0].get(), inpE.get()],
                  [stVs[1].get(), btnE.get()]]
        getSrchbr(schT)

        error = 'TKE'
        schSeek['state'] = NORMAL

    except:

        raiseError(['SCH', error])
        

# ------------------- #
# 8.G: onPrdctsSeek() #
# ------------------- #

def onPrdctsSeek(url: str,
                 stVs: list[tk.StringVar],
                 valPE: tk.Entry,
                 atrPE: tk.Entry,
                 valNE: tk.Entry,
                 prdT: ttk.Treeview,
                 nxtT: ttk.Treeview
                 ):
    
    global driver, categs, prdSeek, prdcts
    
    error = 'VAL'
    
    try:
        
        error = 'TKE'
        prdSeek['state'] = DISABLED
        
        error = 'DRV'
        log("STARTING DRIVER.")
        startDriver()

        try:
            
            error = 'ROW'
            url = categs[10][1]
            
        except:

            error = 'VAL'
         
        error = 'URL'
        log("Accessing URL.")
        getLink(url)

        error = 'VAL'
        locP, valP, atrP = stVs[0].get(), valPE.get(), atrPE.get()
        locN, valN = stVs[1].get(), valNE.get()
        
        log("Seeking categories & links.")
        prdcts = [locP, valP, atrP, locN, valN, []]
        getPrdcts(prdT, nxtT)

        error = 'TKE'
        prdSeek['state'] = NORMAL
    
    except:

        raiseError(['PRD', error])    


# ------------------ #
# 8.H: onFixModfrs() #
# ------------------ #

def onFixModfrs(stVs: list[tk.StringVar],
                ents: list[[int, int, tk.Entry]],
                modT: ttk.Treeview
                ):

    global modfrs
    
    error = 'VAL'

    try:

        locG, locO = [s.get() for s in stVs]
        ctgs, valG, valO, atrO = [e[2].get() for e in ents]
        values = [ctgs, locG, valG, locO, valO, atrO, "N"]

        if '' not in [valG, valO, atrO]:

            error = 'ROW'
            modT.insert('', 'end', values=values)
            error = 'VAL'

            if modfrs == None:

                modfrs = []

            modfrs.append(values)
            error = 'TKE'

            for ent in ents:

                ent[2].delete(0, 'end')
        
    except:

        raiseError(['MOD', error])
        
                 
# ------------------- #
# 8.I: onModfrsSeek() #
# ------------------- #

def onModfrsSeek(modT: ttk.Treeview,
                 verT: ttk.Treeview
                 ):
    
    global driver, categs, modfrs, modSeek
    
    error = 'TKE'
    
    try:

        modSeek['state'] = DISABLED

        error = 'DRV'
        log("STARTING DRIVER")
        startDriver()

        error = 'VAL'
        getModfrs(modT, verT)

        error = 'TKE'
        modSeek['state'] = NORMAL

    except:

        raiseError(['MOD', error])


# ------------------- #
# 8.J: onDelMdfrRow() #
# ------------------- #

def onDelMdfrRow(modT: ttk.Treeview):

    global modfrs
    
    error = 'ROW'

    try:

        selItem = modT.selection()[0]
        vals = modT.item(selItem)['values']
        
        modT.delete(selItem)
        error = 'VAL'

        for item in modfrs:

            if vals == item:

                modfrs.remove(item)
                break
                             
    except:

        raiseError(['MOD', error])


# ------------------ #
# 8.K: onFixChkout() #
# ------------------ #

def onFixChkout(strV: tk.StringVar,
                ents: list[[int, int, tk.Entry]],
                chkT: ttk.Treeview,
                chkI: int
                ):

    global chkout

    error = 'VAL'
    try:

        loc = strV.get()
        val = ents[0][2].get()
        values = [loc, val]

        if len(ents) > 1:

            grp = ents[1][2].get()
            values.append(grp)

        if '' not in [loc, val]:

            error = 'ROW'
            chkT.insert('', 'end', values=values)
            error = 'VAL'

            if chkout == None:

                chkout = [None, None, [], None,
                          [], None, [], None]

            chkout[chkI].append(values)
            error = 'TKE'

            for ent in ents:

                ent[2].delete(0, 'end')
        
    except:

        raiseError(['CHK', error])         

        
# ------------------- #
# 8.L: onChkoutSeek() #
# ------------------- #

def onChkoutSeek(stvs: list[tk.StringVar],
                 ents: list[[int, int, tk.Entry]],
                 scsT: ttk.Treeview,
                 pcsT: ttk.Treeview,
                 cktT: ttk.Treeview,
                 verT: ttk.Treeview
                 ):

    global driver, chkout, chkSeek

    error = 'TKE'

    try:

        chkSeek['state'] = DISABLED

        error = 'DRV'
        log("STARTING DRIVER")
        startDriver()

        error = 'VAL'
        getChkout(verT)

        error = 'TKE'
        chkSeek['state'] = NORMAL

    except:

        raiseError(['CHK', error])


# ------------------- #
# 8.M: onDelSCStRow() #
# ------------------- #

def onDelChktRow(cktT: ttk.Treeview,
                 chkI: int
                 ):

    global chkout

    error = 'ROW'

    try:

        selItem = cktT.selection()[0]
        vals = cktT.item(selItem)['values']

        cktT.delete(selfItem)
        error = 'VAL'

        for item in chkout[chkI]:

            if vals == item:

                chkout[chkI].remove(item)
                break

    except:

        raiseError(['CHK', error])


# ----------------- #
# 8.N: onCfgState() #
# ----------------- #

def onCfgState(inV: tk.IntVar,
               tkL: list[list[list]]
               ):

    error = 'VAL'

    try:
        
        for tkI in tkL:
            for i in tkI:

                state = DISABLED if inV.get() else NORMAL
                i[2].configure(state=state)

                if i[2].cget('text') == "Submit Section":

                    color = "gray77" if inV.get() else "red"
                    i[2].configure(bg=color)

    except:

        raiseError(['NEW', error])


# -------------------- #
# 8.O: onSaveSection() #
# -------------------- #

def onSaveSection(frame: tk.Frame,
                  ents: list[[int, int, tk.Entry]],
                  stVs: list[tk.IntVar],
                  pg: int
                  ):

    global newRow, radios, smtSctn, \
           catTable, selTable, \
           categs, filtrs, srchbr
    
    error = 'VAL'

    try:

        if pg == 0:

            url = r"(http|ftp|https):\/\/([\w\-_]+(?:(?:\.[\w\-_]" + \
                  "+)+))([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?"
            
            stB = ents[0][2].get()
            stU = ents[1][2].get()
            
            if not stB or \
               not re.findall(url, stU):

                raise

            newRow["StoreBrand"] = stB
            newRow["StoreURL"] = stU

            for i in range(1, 7):

                radios[i].configure(state=NORMAL)

        elif pg == 1:

            if not categs[9]:

                raise
            
            newRow["CatParams_o"] = categs[:9]
                
            try:
                
                error = 'ROW'
                row = catTable.selection()[0]
                cat, url = catTable.item(row)['values']

            except:

                cat, url = ['N/A'] * 2

            categs[10] = [cat, url]
            selTable.insert('', 'end', values=(cat, url))
            
        elif pg == 2:

            if not (filtrs[0] and filtrs[2]):

                raise

            newRow["FltParams_o"] = filtrs

        elif pg == 3:

            if "No" in srchbr[2]:

                raise

            newRow["SchParams_o"] = srchbr[:2]

        elif pg == 4:

            if not prdcts[5]:

                raise

            newRow["ProductList"] = prdcts[:5]

            radios[6].configure(state=NORMAL)

        elif pg == 5:

            if not modfrs:

                raise

            newRow["Modifiers_o"] = modfrs
        
        smtSctn.configure(bg='green1', fg='black')
        saved = tk.Label(frame, fg="green", bg="white",
                         font=('Arial', 9, 'bold'),
                         text="Successfully Saved!")
        saved.place(x=340, y=5)
        
    except:

        raiseError(['NEW', error])


# -------------------- #
# 8.O: onNewBotRadio() #
# -------------------- #

def onNewBotRadio(newBot: tk.Tk,
                  intVar: tk.IntVar,
                  fntSet: set
                  ):

    global newRow, radios, categs, filtrs, \
           catTable, selTable, prdTable, \
           smtSctn, ctgSeek, fltSeek, \
           schSeek, prdSeek, modSeek, cktSeek
    
    frame = tk.Frame(newBot, width=500, height=305)
    newBot.geometry("700x305")
    frame.place(x=200, y=0)

    pg = intVar.get()
    
    label = lambda t: tk.Label(frame, text=t)
    bdLbl = lambda t: tk.Label(frame, text=t, font=fntSet)
    
    stV = lambda v: tk.StringVar(frame, value=v)
    tVS = lambda e, k: e if k not in newRow else newRow[k]
    tVI = lambda e, k, i: e if k not in newRow else newRow[k][i]
    tVJ = lambda e, k, i, j: e if k not in newRow else newRow[k][i][j]
    
    ent = lambda t, w: tk.Entry(frame, textvariable=stV(t), width=w)
    opt = lambda s, l: tk.OptionMenu(frame, s, *l)

    lbls = []
    keys = []
    ents = []
    stVs = []
    opts = []
    btns = []

    clickElm = ['Y', 'N']
    locators = ['class name', 'css selector', 'id', 'link text',
                'name', 'partial link text', 'tag name', 'xpath']

    if pg == 0:
        
        lbls = [[35, 30, bdLbl("Basic Online Store Information:")],
                
                [35, 60, label("Store Brand Name:")],
                [259, 60, label("Store URL:")]]

        keys = ["StoreBrand", "StoreURL"]
        ents = [[145, 60, ent(tVS('', keys[0]), 15)],
                [323, 60, ent(tVS('', keys[1]), 22)]]
        
    if pg == 1:

        frame.configure(height=485)
        newBot.geometry('700x485')
            
        lbls = [[35, 30, bdLbl("Menu Category Button Element(s):")],
                [35, 60, label("Locator:")],
                [220, 60, label("Value:")],
                [320, 30, label("Click Element?")],
                    
                [35, 90, bdLbl("Dropdown of Categories " + \
                               "(Leave Blank if Same as Above):")],
                [35, 120, label("Locator:")],
                [220, 120, label("Value:")],

                [35, 150, bdLbl("Category Selections:")],
                [35, 180, label("Locator:")],
                [220, 180, label("Value:")],
                [35, 210, label("Category-Identifying Attr:")],
                    
                [35, 235, label("Cut or Cut->Replace Text:")]]

        prms = "CatParams_o"
        ents = [[262, 60, ent(tVI('', prms, 1), 32)],

                [262, 120, ent(tVI('', prms, 4), 32)],

                [262, 180, ent(tVI('', prms, 6), 32)],
                [180, 210, ent(tVI('', prms, 7), 26)],
                     
                [180, 235, ent(", ".join(tVI('', prms, 8)), 23)]]

        lbls[11][2].configure(bg='red')
        ents[4][2].configure(state=DISABLED)

        stVs = [stV(tVI(locators[0], prms, 0)),
                stV(tVI(clickElm[1], prms, 2)),
                    
                stV(tVI(locators[0], prms, 3)),
                stV(tVI(locators[0], prms, 5))]
        opts = [[85, 55, opt(stVs[0], locators)],
                [406, 25, opt(stVs[1], clickElm)],
                    
                [85, 115, opt(stVs[2], locators)],
                [85, 175, opt(stVs[3], locators)]]

        catTable = ttk.Treeview(frame, height=5)
        catTable['columns'] = ('Categ', 'Link')

        catTable.column("#0", width=0, stretch='NO')
        catTable.column("Categ", anchor='center', width=170)
        catTable.column("Link", anchor='center', width=250)

        catTable.heading("#0", text="", anchor='center')
        catTable.heading("Categ", text="[CATEGORY]", anchor='center')
        catTable.heading("Link", text="[LINK]", anchor='center')

        catTable.place(x=35, y=265)

        selTable = ttk.Treeview(frame, height=1)
        selTable['columns'] = ('SlnCateg', 'SlnLink')

        selTable.column("#0", width=0, stretch='NO')
        selTable.column("SlnCateg", anchor='center', width=210)
        selTable.column("SlnLink", anchor='center', width=210)

        selTable.heading("#0", text="", anchor='center')
        selTable.heading("SlnCateg", text="[SELECTED]", anchor='center')
        selTable.heading("SlnLink", text="[LINK]", anchor='center')

        if categs != None and len(categs[10]) == 2:
            
            selTable.insert('', 'end',
                            values=(categs[10][0],
                                    categs[10][1]))
                
        selTable.place(x=35, y=405)
        
        ctgSeek = tk.Button(frame, text="Seek\nCategories",
                            command=partial(onCategsSeek,
                                            newRow["StoreURL"],
                                            stVs,
                                            ents[:4],
                                            lbls[11][2],
                                            ents[4][2],
                                            selTable,
                                            catTable),
                            width=9, height=2, font=fntSet)
        
        btns.append([365, 212, ctgSeek])
        
        btns.append([321, 231,
                     tk.Button(frame, text=">",
                               command=partial(onFixCategs,
                                               ents[4][2],
                                               catTable))])
        
    elif pg == 2:

        frame.configure(height=600)
        newBot.geometry('700x600')
        
        lbls = [[35, 30, bdLbl("Add a Group Element Type " + \
                               "(As Many As Needed):")],
                [35, 60, label("Locator:")],
                [220, 60, label("Value:")],
                [35, 90, label("Group-Identifying Attr:")],
                [35, 345, bdLbl("Group Elements:")],
                [320, 30, label("Click Element?")],

                [380, 265, label("If a category\n" + \
                                 "was selected,\n" + \
                                 "only its filters\n" + \
                                 "are retrieved.")],
                
                [35, 120, bdLbl("Add a Selection Element Type " + \
                                "(As Many As Needed):")],
                [35, 150, label("Locator:")],
                [220, 150, label("Value:")],
                [35, 180, label("Selection-Identifying Attr:")],
                [35, 460, bdLbl("Selection Elements:")]]

        prms = "FltParams_o"
        ents = [[262, 60, ent('', 32)],
                [165, 90, ent('', 31)],
                
                [262, 150, ent('', 32)],
                [180, 180, ent('', 29)]]

        stVs = [stV(locators[0]),
                stV(tVI(clickElm[1], prms, 1)),
                
                stV(locators[0])]
        opts = [[85, 55, opt(stVs[0], locators)],
                [406, 25, opt(stVs[1], clickElm)],
                
                [85, 145, opt(stVs[2], locators)]]

        fltTable = ttk.Treeview(frame, height=5)
        fltTable['columns'] = ('Group', 'Value')

        fltTable.column("#0", width=0, stretch='NO')
        fltTable.column("Group", anchor='center', width=160)
        fltTable.column("Value", anchor='center', width=160)

        fltTable.heading("#0", text="", anchor='center')
        fltTable.heading("Group", text="[GROUP]", anchor='center')
        fltTable.heading("Value", text="[VALUE]", anchor='center')
        
        fltTable.place(x=35, y=210)

        grpTable = ttk.Treeview(frame, height=3)
        grpTable['columns'] = ('Loctr', 'Value', 'IdAttr')

        grpTable.column("#0", width=0, stretch='NO')
        grpTable.column("Loctr", anchor='center', width=80)
        grpTable.column("Value", anchor='center', width=200)
        grpTable.column("IdAttr", anchor='center', width=140)

        grpTable.heading("#0", text="", anchor='center')
        grpTable.heading("Loctr", text="[LOCATOR]", anchor='center')
        grpTable.heading("Value", text="[VALUE]", anchor='center')
        grpTable.heading("IdAttr", text="[ATTRIBUTE]", anchor='center')
                
        grpTable.place(x=35, y=365)
                
        slnTable = ttk.Treeview(frame, height=3)
        slnTable['columns'] = ('Loctr', 'Value', 'IdAttr')

        slnTable.column("#0", width=0, stretch='NO')
        slnTable.column("Loctr", anchor='center', width=80)
        slnTable.column("Value", anchor='center', width=200)
        slnTable.column("IdAttr", anchor='center', width=140)

        slnTable.heading("#0", text="", anchor='center')
        slnTable.heading("Loctr", text="[LOCATOR]", anchor='center')
        slnTable.heading("Value", text="[VALUE]", anchor='center')
        slnTable.heading("IdAttr", text="[ATTRIBUTE]", anchor='center')

        slnTable.place(x=35, y=480)

        if prms in newRow:
            
            for row in newRow[prms][0]:

                grpTable.insert('', 'end',
                                values=(row[0], row[1], row[2]))

            for row in newRow[prms][2]:

                slnTable.insert('', 'end',
                                values=(row[0], row[1], row[2]))
                
        fltSeek = tk.Button(frame, text="Seek\nFilters",
                            command=partial(onFiltrsSeek,
                                            newRow["StoreURL"],
                                            stVs[1],
                                            fltTable),
                            width=9, height=2, font=fntSet)
            
        btns.append([380, 215, fltSeek])
        
        btns.append([380, 95, tk.Button(frame, text="Add Elem",
                                        command=partial(onFixFiltrs,
                                                        True,
                                                        stVs[0],
                                                        ents[0][2],
                                                        ents[1][2],
                                                        grpTable),
                                        width=9, height=1)])
        btns.append([380, 190, tk.Button(frame, text="Add Elem",
                                         command=partial(onFixFiltrs,
                                                         False,
                                                         stVs[2],
                                                         ents[2][2],
                                                         ents[3][2],
                                                         slnTable),
                                         width=9, height=1)])
        
        btns.append([388, 340, tk.Button(frame, text="Delete Row",
                                         command=partial(onDelFltrRow,
                                                         True,
                                                         grpTable))])
        btns.append([388, 455, tk.Button(frame, text="Delete Row",
                                         command=partial(onDelFltrRow,
                                                         False,
                                                         slnTable))])
                                                         
    elif pg == 3:

        lbls = [[35, 30, bdLbl("Search Bar Input Element:")],
                [35, 60, label("Locator:")],
                [220, 60, label("Value:")],

                [35, 95, bdLbl("Search Submit Button Element:")],
                [35, 125, label("Locator:")],
                [220, 125, label("Value:")]]

        prms = "SchParams_o"
        ents = [[262, 60, ent(tVJ('', prms, 0, 1), 32)],
                [262, 125, ent(tVJ('', prms, 1, 1), 32)]]

        stVs = [stV(tVJ(locators[0], prms, 0, 0)),
                stV(tVJ(locators[0], prms, 1, 0))]
        opts = [[85, 55, opt(stVs[0], locators)],
                [85, 120, opt(stVs[1], locators)]]

        schTable = ttk.Treeview(frame, height=1)
        schTable['columns'] = ('Input', 'Submit')
        
        schTable.column("#0", width=0, stretch='NO')
        schTable.column("Input", anchor='center', width=60)
        schTable.column("Submit", anchor='center', width=60)

        schTable.heading("#0", text="", anchor='center')
        schTable.heading("Input", text="[INPUT]", anchor='center')
        schTable.heading("Submit", text="[SUBMIT]", anchor='center')

        schTable.place(x=35, y=165)

        if srchbr != None and len(srchbr) > 2:

            schTable.insert('', 'end', values=srchbr[2])
            
        schSeek = tk.Button(frame, text="Seek\nSearch",
                            command=partial(onSrchbrSeek,
                                            newRow["StoreURL"],
                                            stVs,
                                            ents[0][2],
                                            ents[1][2],
                                            schTable),
                            width=9, height=2, font=fntSet)

        btns.append([170, 168, schSeek])
        
    elif pg == 4:

        frame.configure(height=380)
        newBot.geometry('700x380')

        lbls = [[35, 30, bdLbl("Element that Contains Each Product:")],
                [35, 60, label("Locator:")],
                [220, 60, label("Value:")],
                [35, 90, label("Product-Identifying Attr:")],

                [35, 125, bdLbl("NEXT Button (May Leave Blank):")],
                [35, 155, label("Locator:")],
                [35, 185, label("Value:")],
                
                [357, 95, label("If a category row\n" + \
                                "was selected, its\n" + \
                                "items are seeked.\n")]]

        prms = "ProductList"
        ents = [[262, 60, ent(tVI('', prms, 1), 32)],
                [177, 90, ent(tVI('', prms, 2), 26)],

                [77, 185, ent(tVI('', prms, 4), 43)]]

        stVs = [stV(tVI(locators[0], prms, 0)),
                stV(tVI(locators[0], prms, 3))]
        opts = [[85, 55, opt(stVs[0], locators)],
                [85, 150, opt(stVs[1], locators)]]

        prdTable = ttk.Treeview(frame, height=5)
        prdTable['columns'] = ('Item', 'Link')
        
        prdTable.column("#0", width=0, stretch='NO')
        prdTable.column("Item", anchor='center', width=160)
        prdTable.column("Link", anchor='center', width=260)

        prdTable.heading("#0", text="", anchor='center')
        prdTable.heading("Item", text="[ITEM]", anchor='center')
        prdTable.heading("Link", text="[LINK]", anchor='center')
        
        prdTable.place(x=35, y=220)

        nxtTable = ttk.Treeview(frame, height=1)
        nxtTable['columns'] = ('Found')

        nxtTable.column("#0", width=0, stretch='NO')
        nxtTable.column("Found", anchor='center', width=90)

        nxtTable.heading("#0", text="", anchor='center')
        nxtTable.heading("Found", text="[NEXT BUTTON]", anchor='center')

        nxtTable.place(x=240, y=125)

        prdSeek = tk.Button(frame, text="Seek\nProducts",
                            command=partial(onPrdctsSeek,
                                            newRow["StoreURL"],
                                            stVs,
                                            ents[0][2],
                                            ents[1][2],
                                            ents[2][2],
                                            prdTable,
                                            nxtTable),
                            width=9, height=2, font=fntSet)

        btns.append([372, 160, prdSeek])
        
    elif pg == 5:
  
        frame.configure(height=510)
        newBot.geometry('700x510')
        
        lbls = [[35, 60, label("Relevant Category Terms " + \
                               "(Optional - Use \", \"):")],
                
                [35, 30, bdLbl("Element of a Product Modify 'Group':")],
                [35, 90, label("Locator:")],
                [220, 90, label("Value:")],

                [260, 120, label("A category with\n" + \
                                 "relevant term(s)\n" + \
                                 "is used to verify.\n")],

                [35, 120, bdLbl("Element of a Product Modify 'Option':")],
                [35, 150, label("Locator:")],
                [35, 180, label("Value:")],
                [35, 210, label("Selection-Identifying Attribute:")],
                [35, 370, bdLbl("Results of Verification:")]]

        prms = "Modifiers_o"
        ents = [[287, 60, ent('', 28)],
                
                [262, 90, ent('', 32)],
                
                [77, 180, ent('', 46)],
                [210, 210, ent('', 24)]]

        stVs = [stV(locators[0]),
                stV(locators[0])]
        opts = [[85, 85, opt(stVs[0], locators)],
                [85, 145, opt(stVs[1], locators)]]

        modTable = ttk.Treeview(frame, height=5)
        modTable['columns'] = ('Categs', 'LocG', 'ValG', 'LocS',
                               'ValS', 'IdAttrS', 'VerifyOpts')
        
        modTable.column("#0", width=0, stretch='NO')
        modTable.column("Categs", anchor='center', width=60)
        modTable.column("LocG", anchor='center', width=40)
        modTable.column("ValG", anchor='center', width=80)
        modTable.column("LocS", anchor='center', width=40)
        modTable.column("ValS", anchor='center', width=80)
        modTable.column("IdAttrS", anchor='center', width=80)
        modTable.column("VerifyOpts", anchor='center', width=40)

        modTable.heading("#0", text="", anchor='center')
        modTable.heading("Categs", text="[CTGS]", anchor='center')
        modTable.heading("LocG", text="[LOC]", anchor='center')
        modTable.heading("ValG", text="[VAL]", anchor='center')
        modTable.heading("LocS", text="[LOC]", anchor='center')
        modTable.heading("ValS", text="[VAL]", anchor='center')
        modTable.heading("IdAttrS", text="[ATTR]", anchor='center')
        modTable.heading("VerifyOpts", text="[VERI]", anchor='center')
        
        modTable.place(x=35, y=240)

        if prms in newRow:

            for row in newRow[prms]:

                modTable.insert('', 'end', values=row)
                
        verTable = ttk.Treeview(frame, height=3)
        verTable['columns'] = ('Term', 'Category', 'Product',
                               'GrpVeri', 'OptVeri', 'Elems')

        verTable.column("#0", width=0, stretch='NO')
        verTable.column("Term", anchor='center', width=60)
        verTable.column("Category", anchor='center', width=100)
        verTable.column("Product", anchor='center', width=100)
        verTable.column("GrpVeri", anchor='center', width=30)
        verTable.column("OptVeri", anchor='center', width=30)
        verTable.column("Elems", anchor='center', width=100)
        
        verTable.heading("#0", text="", anchor='center')
        verTable.heading("Term", text="[TERM]", anchor='center')
        verTable.heading("Category", text="[CATEGORY]", anchor='center')
        verTable.heading("Product", text="[PRODUCT]", anchor='center')
        verTable.heading("GrpVeri", text="[G?]", anchor='center')
        verTable.heading("OptVeri", text="[O?]", anchor='center')
        verTable.heading("Elems", text="[ELEMENTS]", anchor='center')

        verTable.place(x=35,y=390)
        
        modSeek = tk.Button(frame, text="Seek\nModifiers",
                            command=partial(onModfrsSeek,
                                            modTable,
                                            verTable),
                            width=9, height=2, font=fntSet)

        btns.append([380, 154, modSeek])
                
        btns.append([380, 129, tk.Button(frame, text="Add Elem",
                                        command=partial(onFixModfrs,
                                                        stVs,
                                                        ents,
                                                        modTable),
                                        width=9, height=1)])
        
        btns.append([388, 214, tk.Button(frame, text="Delete Row",
                                         command=partial(onDelMdfrRow,
                                                         modTable))])
                                                         
    elif pg == 6:
        
        frame.configure(height=745)
        newBot.geometry('700x745')

        lbls = [[35, 30, bdLbl("1: Add to Cart Button:")],
                [35, 60, label("Locator:")],
                [220, 60, label("Value:")],
                
                [35, 90, bdLbl("2: Shopping Cart Button:")],
                [35, 120, label("Locator:")],
                [220, 120, label("Value:")],

                [35, 150, bdLbl("3: Shopping Cart Steps (Optional):")],
                [35, 180, label("Locator:")],
                [35, 210, label("Value:")],
                
                [35, 240, bdLbl("4: Checkout Button:")],
                [35, 270, label("Locator:")],
                [220, 270, label("Value:")],

                [35, 300, bdLbl("5: Pre-Checkout Steps (Optional):")],
                [35, 330, label("Locator:")],
                [35, 360, label("Value:")],
                [35, 390, label("Option Group (If Applicable):")],

                [35, 420, bdLbl("6: Checkout Form Container Element:")],
                [35, 450, label("Locator:")],
                [220, 450, label("Value:")],

                [35, 480, bdLbl("7: Checkout Field:")],
                [35, 510, label("Locator:")],
                [35, 540, label("Value:")],
                [35, 570, label("Label for this Field:")],

                [35, 600, bdLbl("8: Submit Button:")],
                [35, 630, label("Locator:")],
                [220, 630, label("Value:")],

                [35, 665, bdLbl("Sect #:")],
                [35, 690, bdLbl("Verify:")]]

        prms = "CartChkout"
        ents = [[262, 60, ent(tVI('', prms, 0), 32)],

                [262, 120, ent(tVI('', prms, 1), 32)],

                [77, 210, ent('', 26)],
                
                [262, 270, ent(tVI('', prms, 3), 32)],

                [77, 360, ent('', 26)],
                [197, 390, ent('', 6)],

                [262, 450, ent(tVI('', prms, 5), 32)],

                [77, 540, ent('', 26)],
                [143, 570, ent('', 15)],

                [262, 630, ent(tVI('', prms, 7), 32)]]

        stVs = [stV(locators[0]),
                stV(locators[0]),
                stV(locators[0]),
                stV(locators[0]),
                stV(locators[0]),
                stV(locators[0]),
                stV(locators[0]),
                stV(locators[0])]
        opts = [[85, 55, opt(stVs[0], locators)],
                [85, 115, opt(stVs[1], locators)],
                [85, 175, opt(stVs[2], locators)],
                [85, 265, opt(stVs[3], locators)],
                [85, 325, opt(stVs[4], locators)],
                [85, 445, opt(stVs[5], locators)],
                [85, 505, opt(stVs[6], locators)],
                [85, 625, opt(stVs[7], locators)]]

        scsTable = ttk.Treeview(frame, height=3)
        scsTable['columns'] = ('Loctr', 'Value')

        scsTable.column("#0", width=0, stretch='NO')
        scsTable.column("Loctr", anchor='center', width=40)
        scsTable.column("Value", anchor='center', width=138)
        
        scsTable.heading("#0", text="", anchor='center')
        scsTable.heading("Loctr", text="[LOC]", anchor='center')
        scsTable.heading("Value", text="[VAL]", anchor='center')

        scsTable.place(x=278, y=161)
                
        pcsTable = ttk.Treeview(frame, height=5)
        pcsTable['columns'] = ('Loctr', 'Value', 'Group')

        pcsTable.column("#0", width=0, stretch='NO')
        pcsTable.column("Loctr", anchor='center', width=40)
        pcsTable.column("Value", anchor='center', width=98)
        pcsTable.column("Group", anchor='center', width=40)

        pcsTable.heading("#0", text="", anchor='center')
        pcsTable.heading("Loctr", text="[LOC]", anchor='center')
        pcsTable.heading("Value", text="[VAL]", anchor='center')
        pcsTable.heading("Group", text="[GRP]", anchor='center')

        pcsTable.place(x=278, y=306)

        cktTable = ttk.Treeview(frame, height=5)
        cktTable['columns'] = ('Loctr', 'Value', 'Label')

        cktTable.column("#0", width=0, stretch='NO')
        cktTable.column("Loctr", anchor='center', width=40)
        cktTable.column("Value", anchor='center', width=78)
        cktTable.column("Label", anchor='center', width=60)

        cktTable.heading("#0", text="", anchor='center')
        cktTable.heading("Loctr", text="[LOC]", anchor='center')
        cktTable.heading("Value", text="[VAL]", anchor='center')
        cktTable.heading("Label", text="[LBL]", anchor='center')

        cktTable.place(x=278, y=486)

        verTable = ttk.Treeview(frame, height=1)
        verTable['columns'] = ('Add2Ct', 'GotoCt', 'CtStps', 'Chkout',
                               'PrStps', 'ChkFrm', 'ChkFds', 'SbmtBt')

        verTable.column("#0", width=0, stretch='NO')
        verTable.column("Add2Ct", anchor='center', width=30)
        verTable.column("GotoCt", anchor='center', width=30)
        verTable.column("CtStps", anchor='center', width=40)
        verTable.column("Chkout", anchor='center', width=30)
        verTable.column("PrStps", anchor='center', width=40)
        verTable.column("ChkFrm", anchor='center', width=30)
        verTable.column("ChkFds", anchor='center', width=40)
        verTable.column("SbmtBt", anchor='center', width=30)

        verTable.heading("#0", text="", anchor='center')
        verTable.heading("Add2Ct", text="[1]", anchor='center')
        verTable.heading("GotoCt", text="[2]", anchor='center')
        verTable.heading("CtStps", text="[3]", anchor='center')
        verTable.heading("Chkout", text="[4]", anchor='center')
        verTable.heading("PrStps", text="[5]", anchor='center')
        verTable.heading("ChkFrm", text="[6]", anchor='center')
        verTable.heading("ChkFds", text="[7]", anchor='center')
        verTable.heading("SbmtBt", text="[8]", anchor='center')
        
        verTable.place(x=85, y=665)
        
        cktSeek = tk.Button(frame, text="Seek\nCheckout",
                            command=partial(onChkoutSeek,
                                            stVs,
                                            ents,
                                            scsTable,
                                            pcsTable,
                                            cktTable,
                                            verTable),
                            width=9, height=2, font=fntSet)

        tbls = [scsTable, pcsTable, cktTable]
        yPos = [177, 327, 507]

        newRow[prms] = [None, None, [['C', 'fklasdfjasdlfj']], None, [], None, [], None]

        for i in range(len(tbls)):

            chkI = (2*i)+2
            entI = (3*i)+1
            
            entsPrm = [ents[2]] if i == 0 else ents[entI: entI+2]
            
            if prms in newRow:

                for row in newRow[prms][chkI]:

                    tbls[i].insert('', 'end', values=row)
 
            btns.append([216, yPos[i],
                         tk.Button(frame, text="Add Elem",
                                   command=partial(onFixChkout,
                                                   stVs[chkI], entsPrm,
                                                   tbls[i], chkI))])
            
            btns.append([250, yPos[i]+35,
                         tk.Button(frame, text="Del",
                                   command=partial(onDelChktRow,
                                                   tbls[i], chkI))])
        
        btns.append([380, 670, cktSeek])
        
    smtSctn = tk.Button(newBot, text="Submit Section",
                        bg='red', fg='white',
                        command=partial(onSaveSection,
                                        frame,
                                        ents,
                                        stVs,
                                        pg))
    btns.append([54, 253, smtSctn])

    for lbl in lbls:

        lbl[2].place(x=lbl[0], y=lbl[1])
    
    for ent in ents:

        ent[2].place(x=ent[0], y=ent[1])

    for opt in opts:

        opt[2].place(x=opt[0], y=opt[1])

    for btn in btns:

        btn[2].place(x=btn[0], y=btn[1])

    optional = [1, 2, 3, 5]

    for ent in ents:

        if ent[2].get() != '':

            smtSctn.configure(fg="black", bg="green1")
            break
    
    if pg in optional:

        tkL = [ents, opts, btns]
        ind = optional.index(pg)
        
        if optVars[ind] == None:

            optVars[ind] = tk.IntVar()

        opV = optVars[ind]
        opB = tk.Checkbutton(frame,
                             text="Skip this Section",
                             variable=opV,
                             onvalue=1,
                             offvalue=0,
                             command=lambda:[onCfgState(opV, tkL)])
        opB.place(x=5, y=5)
        
        if opV.get() == 1:

            onCfgState(opV, tkL)
            opB.configure(bg="lightgrey")
        

# ------------------- #
# 8.P: onNewBaseBot() #
# ------------------- #

def onNewBaseBot():

    global newRow, radios, categs
    
    now = str(datetime.now())
    botId = info['First Name'][0] + info['Last Name'][:4] + \
            now[2:4] + now[5:7] + now[8:10] + \
            now[11:13] + now[14:16] + now[17:19]
    
    newRow = {'BotID': botId,
              'IsRunning': False,
              'InitDate': now[:10],
              'LastEditDate': None}
    
    newBot = tk.Toplevel()
    newBot.geometry('700x305')
    newBot.title("Add Base Bot")
    
    f = ("Arial", 9, "bold")
    s = "silver"

    canvas = tk.Canvas(newBot, height=747, width=700)
    canvas.place(x=-2, y=-2)

    canvas.create_rectangle(0, 0, 202, 747, fill=s)
    canvas.create_line(28, 25, 28, 215, width=2)
    
    var = tk.IntVar()
    radio = lambda t, v: tk.Radiobutton(newBot, text=t, font=f,
                                        variable=var, value=v, bg=s,
                                        command=partial(onNewBotRadio,
                                                        newBot,
                                                        var,
                                                        f))

    radioTxt = ["1: General Information",
                "2: Categories (Optional)",
                "3: Filters (Optional)",
                "4: Search Bar (Optional)",
                "5: Product List",
                "6: Modifiers (Optional)",
                "7: Cart & Checkout"]
    
    y = [23, 53, 83, 113, 143, 173, 203]

    radios, categs, filtrs = [], None, None
    for i in range(len(radioTxt)):

        radios.append(radio(radioTxt[i], i))
        radios[i].configure(state=DISABLED)
        radios[i].place(x=15, y=y[i])
        
    var.set(0)
    radios[0].configure(state=NORMAL)
    onNewBotRadio(newBot, var, f)

    isARadio = lambda v, d: v.get()+d in range(len(radios))
    isNormal = lambda v, d: radios[v.get()+d]["state"] == NORMAL
    isNrmRad = lambda v, d: isARadio(v, d) and isNormal(v, d)
    
    checkChg = lambda v, d: v.get()+d if isNrmRad(v, d) else v.get()
    
    prevSect = tk.Button(newBot, text="<",
                         command=lambda:[var.set(checkChg(var, -1)),
                                         onNewBotRadio(newBot, var, f)])
    nextSect = tk.Button(newBot, text=">",
                         command=lambda:[var.set(checkChg(var, 1)),
                                         onNewBotRadio(newBot, var, f)])
    prevSect.place(x=35, y=253)
    nextSect.place(x=145, y=253)
        
    newBot.mainloop()


# ------------------- #
# 8.Q: onNewScraper() #
# ------------------- #

def onNewScraper():

    pass


#############
# Section 9 #
# EDIT INFO #
#############
#
# - 9.A: onSubmit()
# - 9.B: onAddInfo()
# - 9.C: onDelInfo()
# - 9.D: onUpdate()
# - 9.E: onEditInfo()
# - 9.F: onSave()


# --------------- #
# 9.A: onSubmit() #
# --------------- #

def onSubmit(win: tk.Toplevel,
             atrE: tk.Entry,
             valE: tk.Entry
             ):

    error = 'VAL'
    
    try:

        atr = atrE.get()
        val = valE.get()

        error = 'ROW'
        log("Adding new row '" + atr + "' with value '" + val + "'.")
        info[atr] = val
        infoTable.insert('', 'end', len(info.keys()),
                         values=(atr, val))

        error = 'TKE'
        win.destroy()

    except:

        raiseError(['EDT', error])


# ---------------- #
# 9.B: onAddInfo() #
# ---------------- #

def onAddInfo():

    new = tk.Toplevel()
    new.geometry('250x120')
    new.title("Add New Info")

    atrLabel = tk.Label(new, text="Attribute:")
    valLabel = tk.Label(new, text="Value:")
    
    atrLabel.place(x=15, y=15)
    valLabel.place(x=15, y=45)

    atrEntry = tk.Entry(new, width=25)
    valEntry = tk.Entry(new, width=28)

    atrEntry.place(x=75, y=15)
    valEntry.place(x=58, y=45)

    addBttn = tk.Button(new, text="Submit", width=8,
                        command=partial(onSubmit, new,
                                        atrEntry, valEntry))
    addBttn.place(x=90, y=80)
        
    new.mainloop()


# ---------------- #
# 9.C: onDelInfo() #
# ---------------- #

def onDelInfo(win: tk.Toplevel,
              sln: str
              ):

    error = 'ROW'

    try:
        
        for child in infoTable.get_children():

            error = 'TBL'
            attr = infoTable.item(child)
            
            if attr["values"][0][:-1] == sln:

                error = 'ROW'
                log("Deleting '" + sln + "' row.")
                infoTable.delete(child)
                del info[sln]
                
                break

        error = 'TKE'
        win.destroy()

    except:

        raiseError(['EDT', error])


# --------------- #
# 9.D: onUpdate() #
# --------------- #

def onUpdate(win: tk.Toplevel,
             sln: str,
             ent: str
             ):

    error = 'VAL'
        
    try:

        if ent == '':
            
            label3 = tk.Label(win, text="Add input.", fg="red")
            label3.place(x=65, y=90)
            return

        error = 'STR'
        info[sln] = ent
        ind = list(info.keys()).index(sln)

        error = 'ROW'
        infoTable.item(ind, text="", values=(sln, ent))
        log("Item " + sln + " has been changed to " + ent + ".")

        error = 'TKE'
        win.destroy()

    except:

        raiseError(['EDT', error])


# ----------------- #
# 9.E: onEditInfo() #
# ----------------- #

def onEditInfo():

    edit = tk.Toplevel()
    edit.geometry('290x130')
    edit.title("Edit My Info")

    label1 = tk.Label(edit, text="Select Info to Update:")
    label2 = tk.Label(edit, text="New Value:")
    
    label1.place(x=15, y=20)
    label2.place(x=15, y=55)
    
    var = tk.StringVar(edit)          
    var.set(list(info)[0])
    
    editSeln = tk.OptionMenu(edit, var, *info.keys())
    editSeln.place(x=169, y=15)

    addInfo = tk.Button(edit, text="+", width=1,
                        command=onAddInfo)
    delInfo = tk.Button(edit, text="-", width=1,
                        command=lambda: onDelInfo(edit, var.get()))
    
    addInfo.place(x=137, y=18)
    delInfo.place(x=154, y=18)
    
    editEntry = tk.Entry(edit, width=30)
    editEntry.place(x=85, y=55)

    command = lambda: onUpdate(edit, var.get(), editEntry.get())
    update = tk.Button(edit, text="Update", width=9, command=command)
    update.place(x=196, y=85)
    
    editSeln.mainloop()


# ------------- #
# 9.F: onSave() #
# ------------- #

def onSave():

    if driver != None:
            
        driver.close()
        driver.quit()
        execThread.cancel()

    if infoCheck():

        log("Saving Info, Bots, and Scrapers")
        botsDF.to_csv("myBots.csv")
        scrsDF.to_csv("myScrapers.csv")
        
        with open('info.txt', 'w') as infoFile:
            
            for k in info.keys():

                infoFile.write(k + ": " + info[k])
                infoFile.write('\n')

        terminate()
            

###############
# Section 10  #
# BOT CLOSING #
###############
#
# - 10.A: terminate()
# - 10.B: closeBot()


# ----------------- #
# 10.A: terminate() #
# ----------------- #

def terminate():

    global driver

    if driver != None:
            
        driver.close()
        driver.quit()
        execThread.cancel()

    log("Bot-of-all-Trades has been terminated. Thank you!")
    logFile.close()
    bot.destroy()


# --------------- #
# 10.B closeBot() #
# --------------- #

def closeBot():

    if switch['bg'] != 'green1':

        log("Bot is running. Stop to quit!")
        return

    elif not(info == initInfo and \
             botsDF.equals(initBots) and \
             scrsDF.equals(initScrs)):

        save = tk.Toplevel()
        save.geometry('180x80')

        ask = tk.Label(save, text="Want to save updated data?")
        yes = tk.Button(save, width=8, text="Yes", command=onSave)
        no = tk.Button(save, width=8, text="No", command=terminate)

        ask.place(x=15, y=10)
        yes.place(x=20, y=40)
        no.place(x=95, y=40)

        save.mainloop()

    else:

        bot.destroy()


################
# Section 11   #
# MAIN BUTTONS #
################
#
# - 11.A: adjustTabs()
# - 11.B: addButton()
# - 11.C: Tab Buttons
# - 11.D: Side Buttons
# - 11.E: dateTime()


# ------------------ #
# 11.A: adjustTabs() #
# ------------------ #

def adjustTabs(sel: str):

    font = ('Calibri', 22)
    tSel = lambda a, b, tab: a if tab != sel else b

    fg = lambda tab: tSel('black', 'navy', tab)
    bg = lambda tab: tSel('lightgrey', 'white', tab)
    f = lambda tab: tSel(font, font + ('bold',), tab)
    s = lambda tab: tSel(NORMAL, DISABLED, tab)
    h = lambda tab: tSel(1, 2, tab)

    myBots.configure(fg=fg('B'), bg=bg('B'), font=f('B'),
                     state=s('B'), height=h('B'))
    myInfo.configure(fg=fg('I'), bg=bg('I'), font=f('I'),
                     state=s('I'), height=h('I'))
    myLogs.configure(fg=fg('L'), bg=bg('L'), font=f('L'),
                     state=s('L'), height=h('L'))
    helpMe.configure(fg=fg('H'), bg=bg('H'), font=f('H'),
                     state=s('H'), height=h('H'))

    if sel == 'B':
        botsTable.tkraise()
    elif sel == 'I':
        infoTable.tkraise()
    elif sel == 'L':
        logsTable.tkraise()
    else:
        helpTable.tkraise()  


# ----------------- #
# 11.B: addButton() #
# ----------------- #

def addButton(text: str,
              cmd,
              w: int,
              h: int,
              bold: bool = False,
              bg: str = 'lightgrey',
              fg: str = 'black'
              ):
    
    fontSize = 22 if bg != 'green1' else 26
    font = ('Calibri', fontSize) + bold * ('bold',)
    
    return tk.Button(bot, text=text, bg=bg, fg=fg, font=font,
                     command=cmd, width=w, height=h)


# ----------------- #
# 11.C: Tab Buttons #
# ----------------- #

switch = addButton("START", onSwitch, 6, 3, True, bg='green1')
myBots = addButton("My Bots", onMyBots, 8, 1)
myInfo = addButton("My Info", onMyInfo, 8, 1)
myLogs = addButton("My Logs", onMyLogs, 8, 1)
helpMe = addButton("Help Me", onHelpMe, 8, 1)

switch.place(x=524)
myBots.place(x=393)
myInfo.place(x=262)
myLogs.place(x=131)
helpMe.place(x=0)


# ------------------ #
# 11.D: Side Buttons #
# ------------------ #

newBaseBot = addButton("+ Bot", onNewBaseBot, 9, 1, bg='yellow')
newScraper = addButton("+ Scraper", onNewScraper, 9, 1, bg='yellow')
editMyInfo = addButton("Edit Info", onEditInfo, 9, 1, bg='yellow')

newBaseBot.configure(font=('Calibri', 16, 'bold'))
newScraper.configure(font=('Calibri', 16, 'bold'))
editMyInfo.configure(font=('Calibri', 16, 'bold'))

newBaseBot.place(x=524, y=162)
newScraper.place(x=524, y=211)
editMyInfo.place(x=524, y=260)


# ---------------- #
# 11.E: dateTime() #
# ---------------- #

def dateTime():

    now = str(datetime.now())[:-7]
    timestamp = " " + now[-8:] + " " + now[5:7] + \
                "/" + now[8:10] + "/" + now[2:4] + " "

    clock.config(text=timestamp)
    clock.after(1000, dateTime)

clock = tk.Label(bot, font=('Arial', 44),
                 bg='black', fg='yellow')

clock.place(x=66, y=740)
dateTime()

log("Welcome to Bot-of-all-Trades!")
adjustTabs('B')
bot.mainloop()
