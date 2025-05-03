<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="partnermain.aspx.cs" Inherits="partnermain" 
Title="E-Commerce Exchange - Partners" Theme="Admin"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<br />
    <span class="LabelsHeaderLarge"><strong>Partner Programs</strong></span><br />
    
<br />
        <table class="DivWhiteSmoke;" align="center" cellspacing=1 cellpadding=2 border=1 width = "95%">
            <tr class="DivHeader">
                <td align="center" valign="middle" width="140" >
                    <strong><span class="LabelsWhite">Partners Type</span></strong></td>
                <td align="center" valign="top" width="140" >
                    <strong><span class="LabelsWhite">Residual Minimum Requirements</span></strong></td>
                <td align="center" valign="middle" width="140">
                    <strong><span class="LabelsWhite">Payout</span></strong></td>
                <td align="center" valign="middle" width="140" >
                    <strong><span class="LabelsWhite">Benefits</span></strong></td>
                <td align="center" valign="middle" width="140" >
                    <strong><span class="LabelsWhite">Drawbacks</span></strong></td>
                <td align="center" valign="middle" width="140" >
                    <strong><span class="LabelsWhite">Join</span></strong></td>
            </tr>
            <tr>
                <td align=center valign=middle>
                    <a href="partners.aspx" class="Link" onmouseout='swtch(26,splash1); status="";' onmouseover='swtch(25,splash1); status=" Premier Partners ";return(true);'>
                        <b>Premier Partners</b></a>
                </td>
                <td align=center valign=middle>
                    <span class="LabelsBodySmall">None</span>
                </td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        None</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        Free advertising</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">No revenue</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        Link to our site and ECE must be exclusive payments offering and must have a link to our site</span></td>
            </tr>
            <tr>
                <td align=center valign=middle width="130">
                    <a class="Link" href="affiliate.aspx" onmouseout='swtch(26,splash2); status="";'
                        onmouseover='swtch(25,splash2); status=" Affiliates ";return(true);'>
                        <b>Affiliates</b></a>
                </td>
                <td align=center valign=middle>
                    <span class="LabelsBodySmall">
                    None</span>
                </td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">
                        - $100 referral fee per funded merchant account<br />
                        - Additional $50 referral fee for all additional services<br/>
                        - $25 per Add-on service</span></td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">- No work income<br />
                        - Online Merchant Account Signature</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        Fixed pricing</span></td>
                <td align="center" valign="middle">
                    <a class="LinkSmall" href="join.aspx">Sign up</a><span class="LabelsBodySmall"> as an Affiliate</span></td>
            </tr>
            <tr>
                <td align="center" valign="middle" >
                    <a class="Link" href="reseller.aspx" onmouseout='swtch(26,splash3); status="";' onmouseover='swtch(25,splash3); status=" Resellers ";return(true);'>
                        <b>Resellers</b></a><span class="LabelsBody">*</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                    1 funding and/or 1 referral per month or $100 in residual 
					payments</span></td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">
                        - 30% residual/60% commission, OR<br />
                        - Referral Fees: $100 per funded merchant account and $50 per each additional service<br/>
                        - $25 per Add-on service</span></td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">
                        - Additional revenue stream<br />
                        - Online Merchant Account Signature</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">Relatively fixed pricing</span></td>
                <td align="center" valign="middle">
                    <a class = "LinkSmall" href="join.aspx?SignupType=Reseller">Sign up</a><span class="LabelsBodySmall"> as a Reseller</span></td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    <a class="Link" href="agent.aspx" onmouseout='swtch(26,splash4); status="";' onmouseover='swtch(25,splash4); status=" Agents ";return(true);'>
                        <b>Agents</b></a><span class="LabelsBody">*</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        2 fundings and/or 2 referrals per month or $200 in 
					residual payments</span></td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">
                        - 60% residual/80% commission, AND/OR <br />
                        - Referral Fees: $100 per funded merchant account and $50 per each additional service<br/>
                        - $25 per Add-on service</span></td>
                <td align="left" valign="middle">
                    <span class="LabelsBodySmall">
                        - Outstanding career with lead distribution for Qualified Active agents<br />
                        - Access to CRM (Customer Relationship Management) software</span></td>
                <td align="center" valign="middle">
                    <span class="LabelsBodySmall">
                        Must do business as ECE with phone numbers, etc. going to voicemail stating such and be
                        available for direct merchant contact for issues we can't help with</span></td>
                <td align="center" valign="middle">
                    <a class="LinkSmall" href="join.aspx?SignupType=Agent">Sign up</a><span class="LabelsBodySmall"> as an Agent</span></td>
            </tr>
        </table>
<br>
    <span class="LabelsBodySmall">* 2-4 additional services count as a funding towards bonuses.<br /><br /></span>
        <a class="Link" href="javascript:window.history.back();" onmouseover='status=" Back to previous page "; return true;' onmouseout='status=" ";'>
        <img alt="" border="0" height="25" name="back" src="images/back-on.gif" width="75" /><br /></a>
</asp:Content>