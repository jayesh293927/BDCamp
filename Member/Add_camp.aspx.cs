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
public partial class Member_Add_camp : System.Web.UI.Page
{
    string dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.camp_dateval();
    }
    void camp_dateval()
    {
        int dt, month, year;

        for (dt = 1; dt <= 31; dt++)
        {
            campdate.Items.Add(dt.ToString());
        }
        for (month = 1; month <= 12; month++)
        {
            campmon.Items.Add(month.ToString());
        }
        for (year = 2009; year <= 2030; year++)
        {
            campyear.Items.Add(year.ToString());
        }
    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        dt = campdate.SelectedItem.ToString() + "/" + campmon.SelectedItem.ToString() + "/" + campyear.SelectedItem.ToString();
        String StrSql = "Insert Into add_camp (campfor,organization,address,state,city,camp_vanue,camp_date,ph_no,email) Values ('" + txtcampfor.Text + "','" + txtorg.Text + "','" + txtadd.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + txtvanue.Text + "','" + dt + "','" + txtphno.Text + "','" + txtemail.Text + "')";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["BloodBankConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(StrSql, cn);
        try
        {
            cn.Open();
            int Ans = cmd.ExecuteNonQuery();
            this.lbl1.Text += "<br>You Request Successfully Registered!..." + Ans.ToString();
            //this.Response.Redirect("Add_camp.aspx");
            this.lbl1.Text += "You Request Successfully Registered!...";
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
        this.Response.Redirect("Add_camp.aspx");
        
    }
 
}
