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

public partial class Member_Donor_Detail : System.Web.UI.Page
{
    string ans;
    string dt;
   
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
   protected void btnsubmit_Click(object sender, EventArgs e)
    {
        dt = lstDate.SelectedItem.ToString() + "/" + lstMonth.SelectedItem.ToString() + "/" + lstYear.SelectedItem.ToString();
        String StrSql = "Insert Into donor_detail  (name,email,ph_resi,ph_office,mobile,age,gender,bloodgroup,last_donate_on,address,country,state,city,pin,regidate) Values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtph_resi.Text + "','" + txtph_office.Text + "','" + txtmobile.Text + "','" + txtage.Text + "','" + this.gender() + "','" + lstgroup.SelectedItem.ToString() + "','" + dt + "','" + txtradd.Text + "','" + txtrcountry.Text + "','" + txtrstate.Text + "','" + txtrcity.Text + "','" + txtrpin.Text + "','" +DateTime.Today+"')";
        String StrSql1 = "update total_donor_units set units = units+1 where Blood_group = '" + lstgroup.SelectedItem.ToString() + "'";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["BloodBankConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(StrSql, cn);
        SqlCommand cmd1 = new SqlCommand(StrSql1, cn);
        try
        {
            cn.Open();
            int Ans = cmd.ExecuteNonQuery();
            int Ans1 = cmd1.ExecuteNonQuery();
            //Response.Redirect("Donor_Detail.aspx");
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
        Response.Redirect("Donor_Detail.aspx");
    }
    protected void chkDonate_CheckedChanged(object sender, EventArgs e)
    {
        if (lstDate.Enabled == true)
            lstDate.Enabled = false;
        else
            lstDate.Enabled = true;

        if (lstMonth.Enabled == true)
            lstMonth.Enabled = false;
        else
            lstMonth.Enabled = true;

        if (lstYear.Enabled == true)
            lstYear.Enabled = false;
        else
            lstYear.Enabled = true;
        txtrcountry.Focus();
    }

    protected void chkAccept_CheckedChanged(object sender, EventArgs e)
    {
        if (btnsubmit.Enabled == false)
            btnsubmit.Enabled = true;
        else
            btnsubmit.Enabled =false;
        btnreset.Focus();
        
    }
}
