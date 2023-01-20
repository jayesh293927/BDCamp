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
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ConfigurationManager.ConnectionStrings 
                ["BloodBankConnectionString"].ConnectionString;

         SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "dbo.Post";
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.Add("@QText", SqlDbType.VarChar, 150);
        cmd.Parameters.Add("@UserId", SqlDbType.VarChar, 20);

        cmd.Parameters["@QText"].Value = this.TextBox1.Text;
        cmd.Parameters["@UserId"].Value = User.Identity.Name;
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            
        }
        catch (Exception ex)
        {
            this.Label2.Text = ex.Message;
        }
        finally
        {
            if(cn.State == ConnectionState.Open)
                cn.Close();
            Response.Redirect("Question Forum.aspx");
        }

    
    }
}
