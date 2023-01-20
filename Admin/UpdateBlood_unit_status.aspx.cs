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
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        String StrSql = "update blood_unit_status set A_positive='" + txtAp.Text + "',A_negative='" + txtAn.Text + "',B_positive='" + txtBp.Text + "',B_negative='" + txtBn.Text + "',AB_positive='" + txtABp.Text + "',AB_negative='" + txtABn.Text + "',O_positive='" + txtOp.Text + "',O_negative='" + txtOn.Text + "'"; 
        SqlConnection cn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=BloodBank;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand(StrSql, cn);
        try
        {
            cn.Open();
            int Ans = cmd.ExecuteNonQuery();
            this.lbl1.Text = "Records updated:" + Ans.ToString();
            this.lbl1.Text += "<br>You Are Successfully Registered!...";
        }
        catch (Exception ex)
        {
            this.lbl1.Text = "Error occured..." + ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("UpdateBlood_unit_status.aspx");
    }
}
