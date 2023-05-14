b'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nGot run over on information highway\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nGot run over on information highway\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n2012/05/01\n\n\n\n\n\nHow to open RadWindow without RadWindowManager\n\n\n\n\n\n\n\nI liberated\nmy RadWindows from the yoke of the RadWindowManager. Now the question is how to\nopen such free window.\n\nSome parts\nare well described in Telerik documentation.\n\n\nClient side\n\nFunction window.radopen\nis not usable for manager-less windows. RadWindow client side API should be\nemployed instead:\n\n$find(\'FreeWindow\').show();\n\n\nIt is worth\nnoting that the same API can be used for RadWindow placed inside\nRadWindowManager.\n\n\nFrom code behind\n\nThe only\none relevant opening tool on server-side is property VisibleOnPageLoad. When the property is true, then the window is automatically shown after the page is loaded on the\nclient. VisibleOnPageLoad is ViewState property so it has to be reset to the\nfalse after OnInit phase otherwise the window will open at all sequent\npostbacks (partial and full).\n\n\nIs there any other possibility?\n\n\nFrom code behind via startup script\n\nIt is the\nsame approach as on client side but the script is registered in code behind as\na startup script. Startup script registration is quite basic topic but when it\ncomes to dealing with GETs/postbacks and partial postbacks within the same\napplication, things are getting a little bit tricky.\n\n\nA universal\nway how to open a RadWindow from code behind is:\n\nfunction openWindowOnPageLoad(windowId) {\n\n\xa0\xa0\xa0 var fn = function ()\n{\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 var window = $find(windowId);\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0\nwindow.show();\n\n\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0\nSys.Application.remove_load(fn);\n\n\xa0\xa0\xa0 };\n\n\n\n\xa0\xa0\xa0\nSys.Application.add_load(fn);\n\n}\n\n\nCode\nbehind:\n\nScriptManager.RegisterStartupScript(this, this.GetType(),\n"openWindow", "openWindowOnPageLoad(\'FreeWindow\');", true);\n\n\n\nWhat an odd\ncode! Complexity is the price for robustness. Reasons are explained in this blog post.\n\n\n\n\n\n\nat\n9:59 AM\n\n\n5\ncomments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\nASP.NET,\njavascript registration,\nRadWindow\n\n\n\n\n\n\n\n\n\n\n2012/04/24\n\n\n\n\n\nScript registration labyrinth  startup scripts and $find (alternative)\n\n\n\n\n\n\nI described\na universal way how to register startup script that invokes $find javascript\nfunction. This solution is taken from AJAX Control Toolkit and looks like this:\n\n(function () {\n\n\xa0\xa0\xa0 var fn = function ()\n{\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 var control = $find(\'someControl\');\n\n\xa0\xa0\xa0\xa0\xa0\xa0 \xa0control.doSomething();\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 Sys.Application.remove_load(fn);\n\n\xa0\xa0\xa0 };\n\n\n\n\xa0\xa0\xa0\nSys.Application.add_load(fn);\n\n})();\n\nThere are\nother possibilities. I found a solution proposed on Teleriks forum: use\nsetTimeout javascript function to postpone the execution of $find until all\ncontrols are instantiated by $create functions.\n\nThe trick\nis used by Telerik ASP.NET Ajax controls, particularly for scripts registered\ninto RadAjaxManager.ResponseScripts collection. If you try this\nfragment:\n\nstring script = string.Format("alert($find(\'{0}\'));",\nControl1.ClientID);\n\nAjaxManager1.ResponseScripts.Add(script);\n\n\n\nIt will\nresult into this output:\n\nsetTimeout(function(){alert($find(\'Control1\'));},\n0);\n\n\n\nIt works\nwell for partial postbacks but not for full postbacks. No surprise there\nbecause RadAjaxManager is inherently tied to partial postbacks. It can be used\nfor full postbacks as well anyway. It is a pitty because there is no unified\nway how to register startup scripts for both postback types in Telerik ASP.NET\nAJAX controls (at least in current version  2012.1.411). You have to check the\nrequest type (GET/full postback vs. partial postback) and decide how to\nregister the startup script.\n\nIt is so\neasy to fix this approach. Just wrap the setTimeout function to init event\nhandler:\n\nSys.Application.add_init(function\n() {\n\n\xa0\xa0\xa0\nsetTimeout(function () {\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0\nalert($find(\'Control1\'));\n\n\xa0\xa0\xa0 }, 0);\n\n});\n\n\nHere\nis full markup and code-behind\n(Telerik ASP.NET AJAX controls are required).\n\n\n\n\n\n\nat\n8:59 PM\n\n\n0\ncomments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\nAJAX,\nASP.NET,\njavascript registration\n\n\n\n\n\n\n\n\n\n\n2012/04/14\n\n\n\n\n\nScript registration labyrinth  startup scripts and $find\n\n\n\n\n\nYou are an\nASP.NET developer working for surrealistic corporation. You have an ASP.NET\ntimer on your ASPX page and it should be disabled when a particular condition\nis met. This condition can be evaluated only on the server. There is Enabled property in Timer class that can be easily used to fulfill\ncustomers requirement but it is against corporate identity. You are expected\nto use client side API instead.\n\n\n\nOK. You\nhave a timer:\n\n<asp:Timer\nrunat="server"\nID="BretonTimer"\nOnTick="BretonTimer_Tick"\n\n\xa0\xa0\xa0 Interval="2000" />\n\n\n\nTo use\nclient side API of ASP.NET AJAX controls $find method has to be utilized to find the control\ninstance - it is an client-side control instance not DOM element. Timers client-side API is not well documented but there are some clues on the Internet. So lets choose _stopTimer\nfunction for this purpose:\n\nstring\nscript = string.Format("$find(\'{0}\')._stopTimer();",\nBretonTimer.ClientID);\n\n\n\nCreate a button just to test this undocumented\nfunction:\n\n<asp:Button\nrunat="server"\nID="StopBreton"\nText="Stop!"\n\n\xa0\xa0\xa0 OnClientClick="$find(\'BretonTimer\')._stopTimer(); return\nfalse;" />\n\n\nClick on the button to test that API works well.\n\n\nSynchronous postback\n\nSo as the last step this script\nshould be registered\nas a startup script and todays work will be done:\n\nstring script = string.Format("$find(\'{0}\')._stopTimer();",\nBretonTimer.ClientID);\n\nScriptManager.RegisterStartupScript(this, this.GetType(),\n"key1", script, true);\n\n\n\nThe timer\nis really off after page reload. There is a last annoyance, a javascript error:\n$find("BretonTimer") is null\n\n\nWhy $find\nreturns an instance when the script is executed within click event handler and\nfails when the same script is run during page load? Lets see how page source\nlooks like.\n\n\nStartup\nscript is near the page end as\nexpected:\n\n$find(\'BretonTimer\')._stopTimer();Sys.Application.initialize();\n\nSys.Application.add_init(function()\n{\n\n\xa0\xa0\xa0\n$create(Sys.UI._Timer,\n{"enabled":true,"interval":2000,"uniqueID":"BretonTimer"},\nnull, null, $get("BretonTimer"));\n\n\n\nBut what is\non the next line? It seems like something what is intended to create client-side\ninstance of the timer control. ASP.NET AJAX design does not follow\nidiosyncratic philosophy of your corporation, so it is not possible to find an instance\nof control that was not created yet.\n\n\nAdd_init\nattaches event handler to the client-side init event. It\nreminds server-side page lifecycle. And really there is the client-side load event as\nwell. Load event handlers are executed after init handlers and it is exactly\nwhat you need (see Ajax Client Life-Cycle\nEvents for more information):\n\nstring script = string.Format("Sys.Application.add_load(function() {{\n$find(\'{0}\')._stopTimer(); }});", BretonTimer.ClientID);\n\nScriptManager.RegisterStartupScript(this, this.GetType(),\n"key1", script, true);\n\n\nIt works! Timer\nis not running anymore and there is no javascript error.\n\nBut your\nsixth sense warns you that there is something wrong with this solution... What\nabout partial postback?\n\n\n\nPartial postback\n\nTo avoid\nreloads of whole page you are forced to use an UpdatePanel. You modify the\nmarkup in that way:\n\n<asp:UpdatePanel runat="server" ID="UpdatePanel1">\n\n\xa0\xa0\xa0 <ContentTemplate>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:Timer runat="server"\nID="BretonTimer"\nOnTick="BretonTimer_Tick"\nInterval="2000"\n/>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:Button runat="server"\nID="StopBretonButton"\nText="Stop!"\nOnClick="StopBretonButton_Click"\n/>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:Button runat="server"\nID="JustAnotherPostbackButton"\nText="Just another\npostback" />\n\n\xa0\xa0\xa0 </ContentTemplate>\n\n\xa0\xa0\xa0 <Triggers>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:AsyncPostBackTrigger\nControlID="BretonTimer"\n/>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:AsyncPostBackTrigger\nControlID="StopBretonButton"\n/>\n\n\xa0\xa0\xa0 </Triggers>\n\n</asp:UpdatePanel>\n\n\n\nand code behind:\n\nprotected void\nStopBretonButton_Click(object sender, EventArgs e)\n\n{\n\n\xa0\xa0\xa0 string script = string.Format("Sys.Application.add_load(function() {{ $find(\'{0}\')._stopTimer();\n}});", BretonTimer.ClientID);\n\n\xa0\xa0\xa0 ScriptManager.RegisterStartupScript(this, this.GetType(),\n"key1", script, true);\n\n}\n\n\n\nWhen Stop! button is clicked, timer is\nstopped properly. But there is a strange feeling in your guts. Something is\nwrong.\n\nAdd an alert message to make sure what is\nreally happing:\n\nstring script = string.Format("Sys.Application.add_load(function() {{ alert(\'load\nevent handler\');$find(\'{0}\')._stopTimer(); }});",\nBretonTimer.ClientID);\n\n\n\nAlert message load event handler is displayed\nafter pushing Stop! button. But when it is pushed for second time, two\nmessage boxes are displayed. Push Just another postback button and you will\nget two message boxes as well. It means load event handler remains attached to\nthe event after partial postback.\n\n\n\nFor init events it would be a catastrophic\nbehavior. They are used by ASP.NET AJAX framework heavily to run $create\nfunctions. When a new event handler would be attached to init event after every\npartial postback then the page would be unusable after a while because browser would\nspend a lot of time executing many init identical event handlers. It can be hardly true.\n\n\n\nLets do an experiment:\n\nstring script = string.Format("Sys.Application.add_init(function() {{ alert(\'init\nevent handler\'); }});", BretonTimer.ClientID);\n\n\n\nOnly one message box is shown regardless how\nmany times the button is clicked. So there is a fundamental difference between\nload and init events. Why?\n\nIt is difficult to find an answer (MSDN keep silent). If\nyou find one, please let me know, I would love to hear any reason. It is pretty\nsurreal and well suited to the corporate identity.\n\n\nLoad event solution\nis well crafted by AJAX\nControl Toolkit authors. The handler is unregistered after it is executed\nfor the first time:\n\n(function () {\n\n\xa0\xa0\xa0 var fn = function ()\n{\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 $find(\'BretonTimer\')._stopTimer();\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 Sys.Application.remove_load(fn);\n\n\xa0\xa0\xa0 };\n\n\n\n\xa0\xa0\xa0\nSys.Application.add_load(fn);\n\n})();\n\n\n\nThe beauty of this solution is in the fact that\nyou dont need to generate a unique function name for each event handler.\n\n\n\nHere is the final markup and code behind.\n\n\n\nConclusion\n\nThe example\nwith Timer control is quite absurd and may seem useless. But frameworks like\nAJAX Control Toolkit or Telerik are based on $create and $find functions and\nyou have to register some startup scripts using $find function on and off. I\nchose the Timer control as something that is known to all users of those\nASP.NET AJAX frameworks.\n\nRegistering startup script that uses $find function is not as\nstraightforward as it seems for the first time. AJAX Control Toolkit solution\nis safe for synchronous and partial postbacks: \n\n(function () {\n\n\xa0\xa0\xa0 var fn = function ()\n{\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 var\najaxControl = $find(\'AJAX control\');\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 // do\nsomething usefull\n\n\xa0\xa0\xa0 };\n\n\n\n\xa0\xa0\xa0\nSys.Application.add_load(fn);\n\n})();\n\nIt is based on client side page life cycle which is not very commonly\nknown. It handles a little bit shocking load event behavior that is not\ndocumented on MSDN. It is good to know about these ASP.NET AJAX parts.\n\n\n\n\n\n\nat\n1:28 PM\n\n\n1 comments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\nAJAX,\nASP.NET,\njavascript registration\n\n\n\n\n\n\n\n\n\n\n2012/03/11\n\n\n\n\n\nScript registration labyrinth in ASP.NET WebForms\n\n\n\n\n\n\n\nI\'m always lost when trying to register a\njavascript fragment that must be executed on the client side after the postback.\nThere are several usable methods in ASP.NET WebForms and I never know which one\nto choose.\n\n\n\nPage.ClientScript\n\nPage.ClientScript.RegisterStartupScript  registers the startup script.\nWhat does it mean startup? It is something that is executed when the browser finishes\npage loading, which is guaranteed by the fact that startup scripts are\nrendered just before closing <form> tag. Almost all elements on the page\nare processed by the browser at this point and can be referenced from that startup\nscript.\n\nPage.ClientScript.RegisterClientScriptBlock  registers the script block, so it\nis rendered somewhere near after the <form> element opening. This block\nis executed before the DOM is fully processed and before any startup scripts\nare executed. ClientScript blocks are good place for javascript functions.\n\n\n\nPage\n\nPage.RegisterStartupScript and Page.RegisterClientScriptBlock are marked as obsolete and they do\nnothing but Page.ClientScript call. Just ignore them.\n\n\n\nScriptManager\n\nNow what about ScriptManager class? RegisterClientScriptBlock\nand RegisterStartupScript are there as well. What is the justification for such\nduplication? The only difference, according to the documentation (here and here), is that the scripts are included every time\nthat an asynchronous postback occurs. This formulation is slightly confusing.\nScripts registered by ScriptManagers methods are rendered by non-asynchronous\npostback as well. ClientScripts methods are never rendered by asynchronous-postbacks.\n\n\n\nScript registration\nafter asynchronous postback\n\nThe javascript block is not executed if it is a\npart of markup in AJAX response. Browser simply doesnt process such block. Consider\nsuch silly ASPX:\n\n<asp:Button runat="server" ID="Button1" Text="Do postback" OnClick="Button1_Click" />\n\n<asp:Literal runat="server" ID="Literal1" />\n\n\n\nand C# code behind with a script:\n\nprotected void\nButton1_Click(object sender, EventArgs e)\n\n{\n\n\xa0\xa0\xa0\nLiteral1.Text = "<script>alert(\'Button1\nclicked\')</script>";\n\n}\n\n\n\nButton1 causes postback (when clicked) and\nevent handler fills Literal1 with the javascript block. This javascript block\nis execeuted and the alert message is shown when browser loads the\n(synchronous) postback response.\n\n\n\nLets move to asynchronous postback:\n\n<asp:UpdatePanel runat="server" ID="UpdatePanel1">\n\n\xa0\xa0\xa0 <ContentTemplate>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:Button runat="server"\nID="Button1"\nText="Do AJAX\ncall" OnClick="Button1_Click" />\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:Literal runat="server"\nID="Literal1"\n/>\n\n\xa0\xa0\xa0 </ContentTemplate>\n\n\xa0\xa0\xa0 <Triggers>\n\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <asp:AsyncPostBackTrigger\nControlID="Button1"\n/>\n\n\xa0\xa0\xa0 </Triggers>\n\n</asp:UpdatePanel>\n\n\n\nCode behind remains unchanged.\n\n\n\nNo message is shown after the Button1 is\nclicked. Body of the response should look something like this:\n139|updatePanel|UpdatePanel1|\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <input type="submit" name="Button1" value="Do AJAX call" id="Button1" />\n\xa0\xa0\xa0\xa0\xa0\xa0\xa0 <script>alert(\'Button1 clicked\')</script>\n|152|hiddenField|__VIEWSTATE|/wEPDwUKLTUxODY2NjI0NQ9kFgICAw9kFgICAw9kFgJmD2QWAgI\nDDxYCHgRUZXh0BSk8c2NyaXB0PmFsZXJ0KCdCdXR0b24xIGNsaWNrZWQnKTwvc2NyaXB0PmRk88Fv/gu\nMXM8Xq/lT5WC+dG66354=|48|hiddenField|__EVENTVALIDATION|/wEWAgL/oouVBgKM54rGBmox+\n1LEg7FJSnLOTrjRf5eL73gK|7|asyncPostBackControlIDs||Button1|0|postBackControlIDs|\n||13|updatePanelIDs||tUpdatePanel1|0|childUpdatePanelIDs|||12|panelsToRefreshIDs|\n|UpdatePanel1|2|asyncPostBackTimeout||90|13|formAction||WebForm8.aspx|\n\n\n\n\nAlert script is rendered into markup but it is not executed by\nthe browser. How is it possible that script registration via ScriptManager\nworks?\n\n\n\nThis code behind modification could discover\nthe secret:\nprotected void\nButton1_Click(object sender, EventArgs e)\n\n{\n\n\xa0\xa0\xa0 ScriptManager.RegisterStartupScript(this, this.GetType(),\n"script", "<script>alert(\'Button1\nclicked\')</script>", false);\n\n}\n\n\n\nThe alert message box is shown this time. Here\nis the response:\n98|updatePanel|UpdatePanel1|\n        <input id="Button1" name="Button1" type="submit" value="Do AJAX call" />\n    |52|hiddenField|__VIEWSTATE|/wEPDwUKLTUxODY2NjI0NWRkwPvseEH2ojph8EJh0MFS5L+TksA\n=|48|hiddenField|__EVENTVALIDATION|/wEWAgKaoIz3DwKM54rGBr7RMEQMtuoxxWPUsRRwWxmrCH\n/Z|7|asyncPostBackControlIDs||Button1|0|postBackControlIDs|||13|updatePanelIDs||t\nUpdatePanel1|0|childUpdatePanelIDs|||12|panelsToRefreshIDs||UpdatePanel1|2|asyncP\nostBackTimeout||90|13|formAction||WebForm8.aspx|45|scriptStartupBlock|\nScriptContentWithTags|{"text":"alert(\\u0027Button1 clicked\\u0027)"}|\n\n\n\n\nThere are two significant changes in the\nresponse: the script is not rendered (unsurprisingly) in the Literal control and there\nis something more in the response: scriptStartupBlock.\n\xa0ASP.NET AJAX library ensures that script\nfrom this section is executed after receiving the response. ScriptManager.RegisterClientScriptBlock\nis very similar but it uses scriptBlock\nsection.\n\n\n\nIt is quite easy to navigate through the labyrinth\nwhen it is clear how things work under the hood.\n\n\n\n\n\n\nat\n9:52 PM\n\n\n0\ncomments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\nASP.NET,\njavascript registration\n\n\n\n\n\n\n\n\n\n\n2012/01/08\n\n\n\n\n\nI apologize for my ignorance, dear RadWindow\n\n\n\n\n\nI use RadWindow and RadWindowManager for a while and yet I know hardly anything about them. This StackOverflow question about RadWindow in ajax scenario has initiated manifestation of my ignorance. For me it was always clear that RadWindow must be declared inside RadWindowManager and there can be only one RadWindowManager instance on a page. Perverse consequences of this combination are obvious when you use WebForms  ASPX and ASCX entanglement through RadWindow instances. ASPX must contain RadWindowManager and RadWindow that is used on the ASCX as well. What a festival of ignorance!\n\nFirst of all, what is RadWindowManager useful for? I managed to find 3 reasons from the documentation:\n\nIt is a convenient way how to declare property values shared among several RadWindow instances.\nIt adds radopen, radalert, radconfirm and radprompt functions to the global window obect.\nWindow managment API (tile, cascade, etc...).\n\nDocumentation also says that it is possible to instantiate RadWindow without manager participation. And both ways are viable: either declaratively in markup or imperatively from code behind:\n\nvar window1 = new RadWindow();\nwindow1.NavigateUrl = "http://www.google.com";\nwindow1.VisibleOnPageLoad = true;\nwindow1.ID = "RadWindow1";\nwindow1.Width = 500;\nwindow1.Title = "Google";\nwindow1.Height = 300;\nPanel1.Controls.Add(window1);\n\n\n\nThe last line is the most important one from my perspective. Window instance is added into normal asp Panel and no manager is involved.\xa0 The window is displayed even after partial postback when the panel is ajaxified. It is due to fact that RadWindow is control like any others and it is rendered in the same way as any other controls are. The same fact is valid in the case when the window is placed within RadWindowManager. RadWindow is rendered at the same place as the RadWindowManager. In ajax scenario you have to enclose the RadWindowManager into panel that is also updated in given partial postback. It sounds weird in connection with the fact that there can be only one RadWindowManager.\n\nFortunately this fact is not a fact but delusion. A page could easily contain more than one manager instance. In such case radopen and similar functions always use the first manager instance.\n\nWhat about performance? Other managers like RadStyleSheetManager and RadScriptManager improve Telerik-based application performance. It seems to be not true for RadWindowManager according to this site.\n\nWhat is the moral of this sad story? It is not worth to be afraid to work directly with RadWindow instances. As an application does not use tons of windows it would be better to use RadWindowManager only as support for radopen & Co. functions.\n\n\n\n\n\n\nat\n9:35 PM\n\n\n0\ncomments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\nRadWindow,\ntelerik\n\n\n\n\n\n\n\n\n\n\n2011/05/22\n\n\n\n\n\nDelegates serialization: Limits\n\n\n\n\n\nWhen I heard about delegates serializability for the first time, my reaction was romantic. I dreamt about some mystical process that serializes delegates IL and about other magical things. It is, of course, absolute nonsense, but I love those fairy tales :).\n\nAll delegates in C# are inherited directly or indirectly from Delegate. Delegate class is class like any other. It is just marked as serializable  no black magic is needed.\n\nWhat is buried there?\n\nBasically, there are two properties: Method (MethodInfo) and Target (object). It is all what is needed to invoke any .NET method. When delegate points to a static method, then the Target property is null. There are some other internal details that I dont understand but I hope they are irrelevant. \n\nThese facts reveal weaknesses of delegates serialization:\nTarget property is serialized as well when using binary formatter. It could lead some serious issues when object referenced by Target is part of complex object graph. On the other side if Target is not serialized then the delegate cannot be deserialized at all  there wouldnt be any suitable instance to make a method call.\nVersioning issues.\nState of static class is not serialized. Delegate of method that is using static fields (directly or indirectly) is deserialized into completely different context.\nIn addition to these disadvantages, there is a limitation associated with anonymous delegate that is closed over a variable. It is simply not serializable.\n\nIt is clear that persistable continuation implemented in C# by delegate serialization as it was suggested by Mike Hadlow would be very limited, which is a pity.\n\n\n\n\n\n\nat\n11:02 AM\n\n\n1 comments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\ndelegate,\nserialization\n\n\n\n\n\n\n\n\n\n\n2011/05/15\n\n\n\n\n\nNHibernate: Serializing Delegates\n\n\n\n\n\nMike Hadlow discovered very interesting delegate feature for me. They are serializable! In outher words they can be stored in a database, e.g. with NHibernate.\n\nEntity that represents a persistable entity could look like this:\npublic class PersistableDelegate\n{\n    public virtual Delegate Delegate { get; set; }\n    public virtual string Name { get; set; }\n    public virtual int Id { get; set; }\n\n    private byte[] SerializedDelegate {\n        get {\n            if (Delegate == null)\n                return null;\n\n            var formatter = new BinaryFormatter();\n            using (var stream = new MemoryStream()) {\n                formatter.Serialize(stream, this.Delegate);\n                return stream.ToArray();\n        }\n\n        set {\n            if (value != null) {\n                var formatter = new BinaryFormatter();\n                using (var stream = new MemoryStream(value))\n                    Delegate = (Delegate)formatter.Deserialize(stream);\n            }\n            else\n                Delegate = null;\n        }\n    }\n}\n\nYour model can manipulate with Delegate property. SerializedDelegate property provides access to serialized data of the delegate for NHibernate  it is implementation detail and is marked as private. Getter of this property returns the delegate serialized to an array and the setter reconstructs the delegate from provided data.\n\nFNH mapping is simple as breath then:\npublic class PersistableDelegateMap : ClassMap<PersistableDelegate> {\n    public PersistableDelegateMap() {\n        Id(x => x.Id);\n        Map(x => x.Name);\n        Map(Reveal.Member<PersistableDelegate>("SerializedDelegate"))\n            .Length(int.MaxValue);\n    }\n}\nReveal class makes it possible to map private property.\n\nCorresponding database table for MS SQL is:\nCREATE TABLE [dbo].[PersistenceAction](\n    [Id] [int] IDENTITY(1,1) NOT NULL,\n    [Name] [nvarchar](255) NULL,\n    [SerializedDelegate] [image] NULL,\n)\n\nNow it is possible to store a delegate in database:\nvar action = new PersistableDelegate();\naction.Delegate = (Action)(() => { Console.WriteLine("Hello from persisted delegate!"); });\naction.Name = "First test";\n\nsession.Save(action);\nsession.Flush();\n\nand load back:\nvar action = session.Query<PersistableDelegate>().Where(x => x.Name == "First test").FirstOrDefault();\naction.Delegate.DynamicInvoke();\n\nI am not sure yet how can be this useful. There are definitely many limitations, e.g. lambda expression closed over local variable is not serializable. In any case such feature is very promising...\n\n\n\n\n\n\nat\n4:03 PM\n\n\n0\ncomments\n\n\n\n\n\n\n\n\n\nEmail ThisBlogThis!Share to TwitterShare to FacebookShare to Pinterest\n\n\n\nTags:\ndelegate,\nNHibernate,\nserialization\n\n\n\n\n\n\n\n\n\n\n\n\nOlder Posts\n\nHome\n\n\n\n\nSubscribe to:\nPosts (Atom)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nArchive\n\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\n2012\n\n(5)\n\n\n\n\n\n        \xa0\n      \n\n\n\nMay\n\n(1)\n\nHow to open RadWindow without RadWindowManager\n\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\nApril\n\n(2)\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\nMarch\n\n(1)\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\nJanuary\n\n(1)\n\n\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\n2011\n\n(6)\n\n\n\n\n\n        \xa0\n      \n\n\n\nMay\n\n(2)\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\nApril\n\n(3)\n\n\n\n\n\n\n\n        \xa0\n      \n\n\n\nMarch\n\n(1)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTags\n\n\nNHibernate\n(5)\n\n\nASP.NET\n(4)\n\n\nNHDatabaseScopes\n(4)\n\n\njavascript registration\n(4)\n\n\nSqlite\n(3)\n\n\ntesting\n(3)\n\n\nAJAX\n(2)\n\n\nRadWindow\n(2)\n\n\ndelegate\n(2)\n\n\nserialization\n(2)\n\n\ntelerik\n(1)\n\n\nunit tests\n(1)\n\n\n\n\n\n\n\n\n\n\n\n\nLinks\n\n\nGitHub\nNHDatabaseScopes\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPowered by Blogger.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'