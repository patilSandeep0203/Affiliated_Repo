<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QBPOSComparison.aspx.cs" 
    Inherits="QBPOSComparison" Title="E-Commerce Exchange - QuickBooks POS Comparison" Theme="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
<br />
    <span class="LabelsHeaderLarge"><strong>QuickBooks POS 2013 Software Comparison</strong></span><br /><br />        
    <table align="right" width="97%" cellspacing=2 cellpadding=0 border=0 class="DivWhiteSmoke;">
        <tr>
            <td align=left class="DivHeader" valign=middle>
                <span class="MenuHeader"><b>&nbsp;Features</b></span></td>
            <td align=center class="DivHeader" valign=middle>
                <span class="MenuHeader"><b>QuickBooks POS Basic</b></span></td>
            <td align=center  class="DivHeader" valign=middle>
                <span class="MenuHeader"><b>QuickBooks POS Pro</b></span></td>
            <td align=center  class="DivHeader" valign=middle>
                <span class="MenuHeader"><b>QuickBooks POS Multi- Store</b></span></td>            
        </tr>
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Make Better Business Decisions </strong></span>
                <asp:LinkButton ID="btn1" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn1_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl1" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">More than 50 pre-built sales, customer and inventory reports at your fingertips</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>            
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create customized reports and save for easy access</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>            
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Improve your marketing with insights and data from the Customer Center</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Access to sales and inventory reports for each store location and at the "Company Level"</span></td>
            <td align=center valign= middle></td>
            <td align=center valign= middle></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Consolidate Multi-store data into one file</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Manage Employees</strong></span>
                <asp:LinkButton ID="LinkButton1" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn2_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl2" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track employee hours and sales commissions</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>       
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Quickly, Easily Ring Up Sales </strong></span>
                <asp:LinkButton ID="btn3" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn3_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl3" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Accept debit/credit/gift cards right in your software<span style="vertical-align: text-top; font-size:xx-small">1</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>            
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Ability to use a bar code scanner to ring sales</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Allows discounts, returns, store credit & gift receipts</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Customize price tags, receipts and more </span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track work orders and sales orders </span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Take Your Business Mobile </strong></span>
                <asp:LinkButton ID="btn4" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn4_click" />                               
            </td>
        </tr>
        <asp:Panel ID="pnl4" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Ring up sales on your smartphone or tablet (iPad, iPhone, Android)<span style="vertical-align: text-top; font-size:xx-small">2</span></span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Sales & Inventory information from your mobile device syncs with Point of Sale  software<span style="vertical-align: text-top; font-size:xx-small">2</span></span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>        
        </asp:Panel>
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Manage Inventory Accurately and Effortlessly</strong></span>
                <asp:LinkButton ID="btn5" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn5_click" />                               
            </td>
        </tr>
        <asp:Panel ID="panel5" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Automatically track inventory as you sell and receive items </td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Manage vendors </span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Generate purchase orders automatically at pre-set inventory levels </span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Ship and track packages using Shipping Manager<span style="vertical-align: text-top; font-size:xx-small">3</span></span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track multiple vendors, UPC codes, serial numbers, layaways and sales orders</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Include pictures of inventory items</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track inventory transfers between stores</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>        
        </asp:Panel> 
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Track & Reward Your Best Customers </strong></span>
                <asp:LinkButton ID="btn6" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn6_click" />                               
            </td>
        </tr>
        <asp:Panel ID="Panel6" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track customer contact and purchase info </td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Create customer letters easily with Microsoft Word integration <span style="vertical-align: text-top; font-size:xx-small">4</span> </span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Capture “ship-to” addresses for creating mailing lists and labels </span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Recognize your best customers with the Rewards Program</span></td>
            <td align=center valign= middle><img src=BlankWhiteSmoke.bmp /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>        
        </asp:Panel> 
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Easy to Set Up, Easy to Use</strong></span>
                <asp:LinkButton ID="btn7" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn7_click" />                               
            </td>
        </tr>
        <asp:Panel ID="Panel7" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Answer a few simple questions to start </td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">View built-in tutorials for common tasks and learn by example with the Practice File </span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Import items and customers from Microsoft Excel <span style="vertical-align: text-top; font-size:xx-small">5</span></span></td>
            <td align=center valign= middle></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Simple sales screens to quickly & accurately ring items</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>     
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Pricing Management Tools to update prices & create discounts across products and departments</span></td>
            <td align=center valign= middle></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>     
        </asp:Panel> 
         <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Integration with QuickBooks Financial Software</strong></span>
                <asp:LinkButton ID="btn8" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn8_click" />                               
            </td>
        </tr>
        <asp:Panel ID="Panel8" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Transfer sales data to QuickBooks Financial software<span style="vertical-align: text-top; font-size:xx-small">6</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Synch customer data and accounts receivable with QuickBooks Financial software<span style="vertical-align: text-top; font-size:xx-small">6</span></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
           <td align=left valign=middle>
            <span class="LabelsBody">Send time cards to QuickBooks Financial Software for payroll processing<span style="vertical-align: text-top; font-size:xx-small">7</span></td>
            <td align=center valign= middle></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>    
        </asp:Panel> 
        <tr height=25>
            <td align="left" valign="middle" colspan=4>
                <span class="LabelsHeader"><strong>Control Security</strong></span>
                <asp:LinkButton ID="btn9" CssClass="LinkSmall" runat="server" Text="Show/Hide" onclick="btn9_click" />                               
            </td>
        </tr>
        <asp:Panel ID="Panel9" runat="server" Visible="true">
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Track petty cash payouts</td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
            <td align=left valign=middle>
            <span class="LabelsBody">Control access to administrative features by password</td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
            <td align=center valign= middle><img src="Images/check2.bmp" /></td>
        </tr>
        <tr height="5px"></tr>
        <tr>
           <td align=left valign=middle>
            <span class="LabelsBody">Oldest Version Supported</td>
            <td align=center valign= middle>V9</td>
            <td align=center valign= middle>V9</td>
            <td align=center valign= middle>V9</td>
        </tr>   
        <tr height="5px"></tr>
        <tr>
           <td align=left valign=middle>
            <span class="LabelsBody">Oldest Version Supported for Payments</td>
            <td align=center valign= middle>V6</td>
            <td align=center valign= middle>V6</td>
            <td align=center valign= middle>V6</td>
        </tr>   
        </asp:Panel> 
    </table><br />
    <center>
        <a class="Link" target="_blank" href="equipment.aspx#32"><strong>
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
                Requires an Intuit QuickBooks Point of Sale Payments Account. Sold separately. Application approval, fees and additional terms and conditions apply. Call 800-477-5363 for details.
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
                Applicable to POS 2013 users only.  
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">3 </span>
               No QuickBooks Fee for using shipping features, but UPS will charge their standard shipping fees for packages shipped from within QuickBooks Point of Sale.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">4 </span>
                Requires Microsoft Word 2000, 2002, 2003, or 2007. Sold Separately.
                </span>
            </td>
        </tr>        
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">5 </span>
                Requires Microsoft Excel 2000, 2002, 2003, or 2007. Sold Separately.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">6 </span>
                Intuit QuickBooks Point of Sale works with any QuickBooks: Pro or Premier Editions (2008-2012) or QuickBooks Enterprise Solutions (8.0-13.0), sold separately.
                </span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <span class="LabelsBodySmall"><span style="vertical-align: text-top; font-size:xx-small">7 </span>
                Requires currently supported version of QuickBooks Accounting Software and Intuit Payroll service subscription. Sold separately. Call 800-477-5363 for details. 
                </span>
            </td>
        </tr>

        </asp:Panel>
        </table>
</asp:Content>
