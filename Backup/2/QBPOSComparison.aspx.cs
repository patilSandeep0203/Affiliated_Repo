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

public partial class QBPOSComparison : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_click(object sender, EventArgs e)
    {
        if (pnl1.Visible)
            pnl1.Visible = false;
        else
            pnl1.Visible = true;
    }
    protected void btn2_click(object sender, EventArgs e)
    {
        if (pnl2.Visible)
            pnl2.Visible = false;
        else
            pnl2.Visible = true;
    }
    protected void btn3_click(object sender, EventArgs e)
    {
        if (pnl3.Visible)
            pnl3.Visible = false;
        else
            pnl3.Visible = true;
    }
    protected void btn4_click(object sender, EventArgs e)
    {
        if (pnl4.Visible)
            pnl4.Visible = false;
        else
            pnl4.Visible = true;
    }
    protected void btn5_click(object sender, EventArgs e)
    {
        if (panel5.Visible)
            panel5.Visible = false;
        else
            panel5.Visible = true;
    }
    protected void btn6_click(object sender, EventArgs e)
    {
        if (Panel6.Visible)
            Panel6.Visible = false;
        else
            Panel6.Visible = true;
    }
    protected void btn7_click(object sender, EventArgs e)
    {
        if (Panel7.Visible)
            Panel7.Visible = false;
        else
            Panel7.Visible = true;
    }
    protected void btn8_click(object sender, EventArgs e)
    {
        if (Panel8.Visible)
            Panel8.Visible = false;
        else
            Panel8.Visible = true;
    }
    protected void btn9_click(object sender, EventArgs e)
    {
        if (Panel9.Visible)
            Panel9.Visible = false;
        else
            Panel9.Visible = true;
    }
    protected void lnkNotes_click(object sender, EventArgs e)
    {
        if (pnlNotes.Visible)
            pnlNotes.Visible = false;
        else
            pnlNotes.Visible = true;
    }
}
