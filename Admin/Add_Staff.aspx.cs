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

public partial class Staff_detail : System.Web.UI.Page
{
    string ans;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        String StrSql = "Insert Into staff_detail(dept_id,name,address,city,pin,state,ph_resi,mobile,age,gender,designation,shift) Values ('" + lstDept.SelectedItem.Text + "','" + txtname.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtpin.Text + "','" + txtstate.Text + "','" + txtph_no.Text + "','" + txtmobile.Text + "','" + txtage.Text + "','" + this.gender() + "','" + lstDesig.SelectedItem.Text + "','" + this.shift() + "')";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings["BloodBankConnectionString"].ConnectionString;
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
        this.Response.Redirect("Add_Staff.aspx");
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
    string shift()
    {
        if (radday.Checked == true)
        {
            ans = "Day";
        }
        else
        {
            ans = "Night";
        }
        return (ans);
    }
}
