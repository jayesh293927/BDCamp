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

public partial class ShowReply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label1.Text = Request.QueryString["QText"].ToString();
    }

    protected void btnCont_Click(object sender, EventArgs e)
    {
        Response.Redirect("Question Forum.aspx");
    }
}
