<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuickBooksComparison.aspx.cs" 
    Inherits="QuickBooksComparison" Title="E-Commerce Exchange - QuickBooks Comparison" Theme="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
<br />
    <span class="LabelsHeaderLarge"><strong>QuickBooks 2014 Financial Software Comparison</strong></span><br /><br />        
    <table align="right" width="98%" cellspacing=2 cellpadding=0 border=0 class="DivWhiteSmoke;">
        <tr>
            <td align=left class="DivHeader" valign=middle width="440px">
                <span class="MenuHeader"><b>&nbsp;Features</b></span></td>
            <td align=center  class="DivHeader" valign=middle width="120px">
                <span class="MenuHeader"><b>QuickBooks Online Essentials</b></span></td>            
            <td align=center class="DivHeader" valign=middle width="120px">
                <span class="MenuHeader"><b>QuickBooks Online Plus</b></span></td>
            <td align=center  class="DivHeader" valign=middle width="120px">
                <span class="MenuHeader"><b>QuickBooks for MAC</b></span></td>
            <td align=center  class="DivHeader" valign=middle width="120px">
                <span class="MenuHeader"><b>QuickBooks Pro</b></span></td>
            <td align=center  class="DivHeader" valign=middle width="120px">
                <span class="MenuHeader"><b>QuickBooks Premier</b></span></td>
            <td align=center  class="DivHeader" valign=middle width="120px">
                <a href="QBEnterpriseSolutions.aspx" class="MenuHeader"><b>QuickBooks Enterprise Solutions</b></a></td>
        </tr>
        <tr height=25>
            <td align="left" valign="middle" colspan=6>
                <span class="LabelsHeader"><strong>EASILY GET STARTED</strong></span>
                <asp:LinkButton ID="btn1" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn1_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl1" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Purchase additional user licenses and allow multiple users to work in QuickBooks at the same time<span style="vertical-align: text-top; font-size:xx-small">1</span></span></td>
            <td align=center valign= middle><span class="LabelsBody">3 user + accountant</span></td>
            <td align=center valign= middle><span class="LabelsBody">5 users + accountant</span></td>
            <td align=center valign= middle><span class="LabelsBody">Up to 5 users</span></td>
            <td align=center valign= middle><span class="LabelsBody">Up to 3 users</span></td>
            <td align=center valign= middle><span class="LabelsBody">Up to 5 users</span></td>
            <td align=center valign= middle><span class="LabelsBody">Up to 30 users</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Free QuickBooks Support Included</span></td>
            <td align=center valign= middle><span class="LabelsBody">Email, phone<br/> & chat<br/> support</span></td>
            <td align=center valign= middle><span class="LabelsBody">Email, phone<br/> & chat<br/> support</span></td>
            <td align=center valign= middle><span class="LabelsBody">30 day<span style="vertical-align: text-top; font-size:xx-small">2</span></span></td>
            <td align=center valign= middle><span class="LabelsBody">30 day<span style="vertical-align: text-top; font-size:xx-small">2</span></span></td>
            <td align=center valign= middle><span class="LabelsBody">30 day<span style="vertical-align: text-top; font-size:xx-small">2</span></span></td>
            <td align=center valign= middle><span class="LabelsBody">12 months</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Work in 2 company files at the same time<span style="vertical-align: text-top; font-size:xx-small">3</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody"><img src="Images/check2.bmp" /></span></td>
        </tr>
                <tr height="5px"></tr>
                <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Online Backup and protection of QuickBooks data<span style="vertical-align: text-top; font-size:xx-small">4</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src="Images/check2.bmp" /></td>
            <td><img src="Images/check2.bmp" /></td>
            <td><span class="LabelsBody">With plus subscription</span></td>
            <td><span class="LabelsBody">With plus subscription</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Access to U.S.-based product experts, unlimited technical support, and upgrades<span style="vertical-align: text-top; font-size:xx-small">4</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><span class="LabelsBody">With plus subscription</span></td>
            <td><span class="LabelsBody">With plus subscription</span></td>
            <td align=center valign= middle><span class="LabelsBody">Included for 1 year</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">100GB Data Protect, 3 users of QuickBooks Connect, 25 users of Commissions Manager, 
            Unlimited space with up to 100 megs per attached document, 5 users for Time and Billing and more included 
            for a full 12 months<span style="vertical-align: text-top; font-size:xx-small">5</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody">Separate Subscription Required</span></td>
            <td align=center valign= middle><span class="LabelsBody">Separate Subscription Required</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>        

        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=6>
                <span class="LabelsHeader"><strong>ORGANIZE AND COMPLETE EVERYDAY TASKS</strong></span>
                <asp:LinkButton ID="btn2" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn2_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl2" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Easily print checks, pay bills & track expenses</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create e-mail estimates, invoices, reports<span style="vertical-align: text-top; 
                font-size:xx-small">6</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>        
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track sales, sales taxes & customer payments</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create and customize professional-looking invoices & forms</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Download your bank & credit transactions into QuickBooks<span style="vertical-align: 
                text-top; font-size:xx-small">7</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Get a consolidated view into your business with Company Snapshot</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>            
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>      
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">See key customer information at a glance with the new Customer Snapshot. </span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>     
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Invoice multiple customers at once with Batch Invoicing</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track and follow up on sales leads with the Lead Center</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">See invoices, billing and other important tasks in a calendar view. Add to iCal for QuickBooks for Mac.</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Customize the home page based on the specific preferences for each user.</span></td>

            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=6>
                <span class="LabelsHeader"><strong>EFFICIENTLY MANAGE EMPLOYEES</strong></span>
                <asp:LinkButton ID="btn3" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn3_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl3" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track time and expenses to bill clients</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>            
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
                <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Manage payroll & payroll taxes; offer Direct Deposit (sold separately)<span style="vertical-align: 
                text-top; font-size:xx-small">8</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=6>
                <span class="LabelsHeader"><strong>MANAGE PRODUCTS AND SERVICES</strong></span>
                <asp:LinkButton ID="btn4" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn4_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl4" runat="server" Visible="true">

        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track inventory, create and manage purchase orders and inventory reorder points</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>

        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Process FedEx & UPS shipments in QuickBooks and directly print labels<span style="vertical-align: 
                text-top; font-size:xx-small">9</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>

        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Advanced features track costs for assembled products & inventory</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track the quantity and value of inventory items held in multiple 
                locations<span style="vertical-align: text-top; font-size:xx-small">10</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Manage inventory using bin location tracking, bar code scanning, serial number or lot tracking, 
            FIFO costing, and multiple location inventory<span style="vertical-align: text-top; font-size:xx-small">10</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody">With Advanced Inventory Module</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Control, Customize and automate your pricing right within QuickBooks<span style="vertical-align: text-top; font-size:xx-small">10</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody">With Advanced Inventory Module</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Assign default classes to items, accounts or names and QuickBooks automatically assigns the default class in transactions</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create barcodes using QuickBooks</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=7>
                <span class="LabelsHeader"><strong>FLEXIBILITY TO WORK THE WAY YOU WANT</strong></span>
                <asp:LinkButton ID="btn5" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn5_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl5" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">One-click financial, sales & tax reports </span></td>
            <td align=center valign= middle><span class="LabelsBody">40+</span></td>
            <td align=center valign= middle><span class="LabelsBody">65+</span></td>
            <td align=center valign= middle><span class="LabelsBody">100+</span></td>
            <td align=center valign= middle><span class="LabelsBody">100+</span></td>
            <td align=center valign= middle><span class="LabelsBody">150+ Industry-Specific</span></td>
            <td align=center valign= middle><span class="LabelsBody">150+ Industry-Specific</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create and customize professional-looking invoices & forms. 
            Included with QuickBooks Online and QuickBooks for Mac. Free trial available for QuickBooks for Windows.
            <span style="vertical-align: text-top; font-size:xx-small">11</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Organize and back-up documents by attaching them to your QuickBooks records</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>

        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Import data from Peachtree, Excel, Quicken, Outlook contacts & prior QuickBooks versions<span style="vertical-align: 
                text-top; font-size:xx-small">12</span></span></td>
            <td align=center valign= middle><span class="LabelsBody">QuickBooks and Excel import only</span></td>
            <td align=center valign= middle><span class="LabelsBody">QuickBooks import only</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
       <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Easily create a business plan</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track your Balance Sheet by Class</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Forecast sales & expenses</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Set billing rates by employee, customer/client, position or service</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Industry Specific sample files, menus & chart of accounts </span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Consolidate reports from multiple company files<span style="vertical-align: 
                text-top; font-size:xx-small">13</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Get the capacity to add a hundred thousand or more inventory items, customers & vendors as you grow<span style="vertical-align: 
                text-top; font-size:xx-small">14</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create custom reports with ODBC-compliant applications using a direct 
                connection to the QuickBooks database<span style="vertical-align: 
                text-top; font-size:xx-small">15</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>        
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track international sales & expenses in multiple currencies</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Integrates with Mac OS X tools such as Numbers, iChat, iCal, MobileMe, and AddressBook<span style="vertical-align: 
                text-top; font-size:xx-small">16</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=7>
                <span class="LabelsHeader"><strong>OPTIMIZED FOR MULTIPLE USERS AND LOCATIONS</strong></span>
                <asp:LinkButton ID="btn6" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn6_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl6" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Set permissions levels to control user access</span></td>            
            <td align=center valign= middle><span class="LabelsBody">4 broad area activities</span></td>
            <td align=center valign= middle><span class="LabelsBody">4 broad area activities</span></td>
            <td align=center valign= middle><span class="LabelsBody">4 broad area activities</span></td>
            <td align=center valign= middle><span class="LabelsBody">10 broad area activities</span></td>
            <td align=center valign= middle><span class="LabelsBody">10 broad area activities</span></td>
            <td align=center valign= middle><span class="LabelsBody">115+ specific activities</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Temporarily access company file from remote location (add'l fees may apply for QB Remote Access)<span style="vertical-align: 
                text-top; font-size:xx-small">17</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody">6 months free</span></td>
            <td align=center valign= middle><span class="LabelsBody">1 year free</span></td>
            <td align=center valign= middle><span class="LabelsBody">1 year free</span></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Access  from work, home, or the road (share with multiple locations & people)<span style="vertical-align: 
                text-top; font-size:xx-small">18</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Real time multi-location access with Windows Terminal Services<span style="vertical-align: 
                text-top; font-size:xx-small">19</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        </asp:Panel> 
        <tr height=25>
            <td align="left" valign="middle" colspan=7>
                <span class="LabelsHeader"><strong>INTUIT PAYMENT SOLUTIONS</strong></span>
                <asp:LinkButton ID="btn7" CssClass="Link" runat="server" Text="Show/Hide" onclick="btn7_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl7" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Accept credit and debit cards in QuickBooks<span style="vertical-align: text-top; 
                font-size:xx-small">20</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Swipe credit cards using a card reader</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>        
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Download terminal transactions into QuickBooks (Terminal Download Service)</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Scan and deposit your checks with Intuit Check Solution for QuickBooks - has to be 2010 or later versions (subscription required)<span style="vertical-align: 
                text-top; font-size:xx-small">21</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><span class="LabelsBody">E Check works but not the scanner</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Allow customers to view and pay invoices online through Billing Solutions when combined with QuickBooks Merchant Services (subscription required)<span style="vertical-align: 
                text-top; font-size:xx-small">22</span></span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Integrates with GoPayment (Mobile Proceesing from Intuit)</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Payment Processing through QuickBooks/E-Commerce</span></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>

        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Oldest version supported</span></td>
            <td align=center valign= middle><span class="LabelsBody">2012</span></td>
            <td align=center valign= middle><span class="LabelsBody">2012</span></td>
            <td align=center valign= middle><span class="LabelsBody">2012</span></td>
            <td align=center valign= middle><span class="LabelsBody">2012</span></td>
            <td align=center valign= middle><span class="LabelsBody">2012</span></td>
            <td align=center valign= middle><span class="LabelsBody">v12.0</span></td>
        </tr>
        </asp:Panel>      
    </table><br />
    <center>
        <a class="Link" target="_blank" href="equipment.aspx#31"><strong>
                        Order Now!!!</strong></a>
    </center><br />
    <table align="center" width="95%" cellspacing=2 cellpadding=0 border=0>
        <tr>
            <td align="left">
                <asp:LinkButton ID="lnkNotes" CssClass="Link" runat="server" Text="Notes and Disclosures" onclick="lnkNotes_click" />
            </td>
        </tr>
        <asp:Panel ID="pnlNotes" runat="server" Visible="false">
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">1 </span>
                Requires the purchase of additional single-user and/or multi-user licenses to become multiple-user capable (one user per license purchased). 
                All copies of QuickBooks must be the same version-year. 
                </span>
            </td>
        </tr>
        <!--<tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">2 </span>
                Registration and agreement to terms and conditions required.
                </span>
            </td>
        </tr>-->
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">2 </span>
                30 consecutive days of QuickBooks support included from first-time registration. Offer valid 90 days from software purchase; U.S. only. 
                Callback support; internet access required. See terms and conditions inside software.  
                </span>
            </td>
        </tr>
                <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">3 </span>
Some functionality may be limited when running two instances. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">4 </span>
The Full Service Plan (FSP) is good for 12 months from QuickBooks Enterprise Solutions purchase date or Full Service Plan renewal date. You have the option to add QuickBooks Mobile and Intuit Data Protect for free as an active FSP member. 
Service begins as of the date activated and continues through to the expiration date of your FSP plan. Online Backup Service requires Internet access and an active Full Service Plan. 
Entire PC is limited to 100GB total storage, which includes all 45 days which you have stored. In some cases data damage may be too extensive and the data file may be non-recoverable. 
QuickBooks support is available 24 hours a day, seven days a week; the Enterprise Solutions team (including our U.S.-based team of product experts) is available weekdays from 4:00 a.m.-7:00 p.m. Pacific Standard time. 
Support hours exclude occasional downtime due to system and server maintenance, company events, observed U.S. holidays and events beyond our control. Intuit reserves the right to limit each telephone contact to one hour and to one incident. 
Active Full Service Plan members receive new versions of our products when and if released within 12 months of QuickBooks Enterprise Solutions purchase date or Full Service Plan renewal date. Online access to training is included with each Full Service Plan annual membership. 
Terms, conditions, pricing, features, service and support options are subject to change without notice. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">5 </span>
                For QuickBooks Enterprise Solutions: The Full Service Plan is good for 12 months from QuickBooks Enterprise Solutions purchase date or Full Service Plan renewal date. 
                You have the option to add QB Connect, Intuit Commissions Manager, Attached Documents, Time and Billing and Data Protect for free as an active Full Service Plan member. 
                Service begins as of the date activated and continues through to the expiration date of your Full Service Plan. QuickBooks Connected Services can be purchased as separate subscriptions for QuickBooks Pro and Premier. 
                QuickBooks Connect service works only with QuickBooks versions 2011 and above. 
                </span>
            </td>
        </tr>        
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">6 </span>
                Synchronization with Outlook requires QuickBooks Contact Sync for Outlook 2003, 2007 and 2010 (inc 64-bit) (downloadable for free at: www.quickbooks.com/contact_sync). 
                For Mac: Requires Apple Mail®; Microsoft® Entourage® 2004 or 2008 for Mac.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">7 </span>
Online services vary by participating financial institutions or other parties and may be subject to application approval, additional terms, conditions, and fees.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">8 </span>
                Requires paid subscription, EIN and Internet access. Each employee you pay is an additional $2/month. If you file taxes in more than one state, each additional state is $12/month. Sold separately. Terms, conditions, and fees apply. For details call 800-477-5363.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">9 </span>
                No QuickBooks fees for using shipping features, but FedEx and UPS will charge shipping fees for packages shipped from within QuickBooks. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">10 </span>
Applications sold separately. Additional fees apply for the Advanced Inventory and Advanced Pricing add-on subscriptions. Requires QuickBooks Enterprise Solutions 14.0 with an active Full Service Plan and an Internet connection. You'll automatically receive any new versions of our product that are released, when and if available, along with updates to your current version.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">11</span>
                For Mac: Templates customized in prior versions of QuickBooks for Mac will be available but not editable. 
                QuickBooks for Windows templates are not transferable to QuickBooks for Mac. 
                </span>
            </td>
        </tr>


        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">12 </span>
Transfer data from Peachtree 2009–2011; Microsoft SBA 2006; and Microsoft Office Accounting 2007–2009 using free tool available at www.quickbooks.com/support. Transfer data directly from Quicken 2012–2014, QuickBooks 4.0–2014 and Microsoft Excel 2003–2010.
                Requires Microsoft Word 2000, 2002, 2003. Excel integration requires Excel 2000, 2002 or 2003. Outlook synchronization requires QuickBooks Contact Sync for Outlook tool, available for free at www.quickbooks.com/contact_sync/, and Outlook 2000, 2002 or 2003. 
                Synchronization with Outlook is also possible with QuickBooks Customer Manager (sold separately). For more information visit www.quickbooks.com. Business software applications sold separately. 
                </span>
            </td>
        </tr>

        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">13 </span>
                Requires Microsoft Excel 2002, 2003, or 2007. Company files must all be on the same version of QuickBooks Enterprise Solutions.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">14 </span>
                Performance testing was optimized at 100,000 list elements. You may see performance degradation as you add more than 100,000 items, customers or vendors. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">15 </span>
                ODBC-compliant applications sold separately. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">16 </span>
                AddressBook and iCal are included in Mac OS X from Apple, Inc.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">17 </span>
                Internet access required. For QuickBooks Pro: Additional fees apply for WebEx remote access service. 
                For QuickBooks Premier & QuickBooks Enterprise Solutions: One single-user subscription (6 or 12 months of service) 
                included at no charge, valid for customers who purchase and install QuickBooks Pro 2013, QuickBooks Premier 2013 or QBES 2013. 
                QuickBooks Remote Access does not work with QuickBooks Pro for Mac or QuickBooks Online Edition. Remote Access subscription begins at the time of installation. 
                This offer includes access to QuickBooks data only for one user. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">18 </span>
                QuickBooks Online Edition requires a computer with Microsoft Windows 98, Me, NT, 2000, or XP, an Internet connection (a high-speed connection is recommended), and at least Microsoft Internet Explorer 6.0. 
                Availability subject to regular maintenance periods. Terms, condition, pricing, features, and service options subject to change without notice. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">19 </span>
                You must purchase and setup your own Microsoft Windows Terminal Services on your own server. 
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">20 </span>
               Intuit Merchant Service is an optional fee-based service. Any supported QuickBooks desktop version or subscription to QuickBooks Online is required, sold separately. 
               Application approval required. Rates are determined by the financial institution and are subject to change without notice. 
               Transactions are subject to Association guidelines. Terms, conditions, features, pricing, service and support options are subject to change without notice. 
               For additional information call 800-477-5363.

                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">21 </span>
                Payments submitted by 3 p.m. PST usually get funds deposited to the merchant's U.S. bank account the next business day. 
                Intuit reserves the right to hold settlement on deposited checks as necessary to manage risk. Deposits held are reviewed with merchants and a decision is made to release funds after reviewing the specific situation. 
                Subsequent deposits then revert to next day funding. Requires QuickBooks accounting software 2010 (for the PC) or higher, QuickBooks Enterprise Solutions 10 or higher, 
                or QuickBooks Online Edition (each sold separately) and a merchant account through Intuit Payment Solutions. Application approval, an Internet connection on a Windows PC and at least Internet Explorer 5.0 required. 
                Not compatible with QuickBooks Pro for Mac. Transaction fees apply. Terms, conditions, features, pricing, service and support options are subject to change without notice. 
                Requires one of two scanners: high speed Panini Vision VX Scanner or general purpose Fujitsu ScanSnap s300/s1300 Scanner (each sold separately).
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">22 </span>
                Online payment (QuickBooks Pro and Premier 2008 or higher, QuickBooks Enterprise Solutions 8.0 or higher, 
                QuickBooks Credit Card Processing Kit 2008 or higher and QuickBooks Invoice Manager 2008 or higher) requires subscription to optional Intuit Merchant Service for QuickBooks sold separately. 
                Application approval required; additional fees apply.
                </span>
            </td>
        </tr>
        </asp:Panel>
        </table>
</asp:Content>
