using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class IntuitPayroll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int AffiliateID = 11;
            HttpCookie ck = Request.Cookies["AffiliateWizAffiliateID"];
            if (ck != null)
                AffiliateID = Convert.ToInt32(ck["AffiliateID"].ToString().Trim());
            lnkOnlineApplication.NavigateUrl = "https://www.firstaffiliates.com/OnlineApplication/Start.aspx?Referral=" + AffiliateID.ToString();
            lnkIntuitPayroll.NavigateUrl = "http://quickbooks.toolhouse.com/30893_payroll_popup/movies_standalone/player_assisted.html?format=noscript&TB_iframe=true&width";
        }
    }

    protected void lnkNotes_click(object sender, EventArgs e)
    {
        if (pnlNotes.Visible)
            pnlNotes.Visible = false;
        else
            pnlNotes.Visible = true;
    }
}
