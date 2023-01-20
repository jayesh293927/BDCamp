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

public partial class FAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 2;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 3;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 4;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 5;
    }
}
