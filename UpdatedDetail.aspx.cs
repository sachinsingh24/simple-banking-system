using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Simple_Banking_System
{
    public partial class UpdatedDetail : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["SparkFoundationConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                UpdatedGridview();
            

        }
        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
        public void UpdatedGridview()
        {

            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from userdetails where ID in ('"+ Convert.ToInt32(Request.QueryString["first"].ToString())+"','"+ Convert.ToInt32(Request.QueryString["second"].ToString())+"')",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
            protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TransferDetails.aspx");
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("TransferDetails.aspx");
        }
    }

}