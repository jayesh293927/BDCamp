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
public partial class Member_Patient_detail : System.Web.UI.Page
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

        String StrSql = "Insert Into patient_details(name,email,blood_group,units,ph_resi,ph_office,mobile,age,gender,address,country,state,city,pin,regidate) Values ('" + txtname.Text + "','" + txtemail.Text + "','" + lstgroup.SelectedItem.ToString() + "','" + txtunits.Text + "','" + txtph_resi.Text + "','" + txtph_office.Text + "','" + txtmobile.Text + "','" + txtage.Text + "','" + this.gender() + "','" + txtradd.Text + "','" + txtrcountry.Text + "','" + txtrstate.Text + "','" + txtrcity.Text + "','" + txtrpin.Text + "','" +DateTime.Today+ "')";
        String StrSql1 = "update total_blood_demand set units = units+'" + txtunits.Text + "' where blood_group =  '" + lstgroup.SelectedItem.ToString() + "'";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["BloodBankConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(StrSql, cn);
        SqlCommand cmd1 = new SqlCommand(StrSql1, cn);
        try
        {
            cn.Open();
            int Ans = cmd.ExecuteNonQuery();
            int Ans1 = cmd1.ExecuteNonQuery();
            //Response.Redirect("Patient_detail.aspx");
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
        Response.Redirect("Patient_detail.aspx");
    }


   
}
