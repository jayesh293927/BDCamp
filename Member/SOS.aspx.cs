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
public partial class Member_SOS : System.Web.UI.Page
{
    string ans;
    string result;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    string gender()
    {
        if (radmale.Checked == true)
        {
            ans = "M";
        }
        else
        {
            ans = "F";
        }
        return (ans);
    } 
    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        String StrSql = "Insert Into sos_request  (name,address,country,state,city,pin,email,ph_resi,ph_office,mobile,p_name,gender,unit,blood_group,require_within,regdate) Values ('" + txtname.Text + "','" + txtradd.Text + "','" + txtrcountry.Text + "','" + txtrstate.Text + "','" + txtrcity.Text + "','" + txtrpin.Text + "','" + txtemail.Text + "','" + txtph_resi.Text + "','" + txtph_office.Text + "','" + txtmobile.Text + "','" + txtpname.Text + "','" + this.gender() + "','" + txtunits.Text + "','" + lstgroup.SelectedItem.ToString() + "','" + lstrequire.SelectedItem.ToString() + "','" +DateTime.Today+ "')";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["BloodBankConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(StrSql, cn);
        try
        {
            cn.Open();
            int Ans = cmd.ExecuteNonQuery();
            this.Response.Redirect("SOS.aspx");
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
        this.Response.Redirect("SOS.aspx");
    }

    protected void txtph_resi_TextChanged(object sender, EventArgs e)
    {

    }
   
}
