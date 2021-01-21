using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Simple_Banking_System
{
    public partial class TransferDetails : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["SparkFoundationConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Transfer_Gridview();
        }
        public void Transfer_Gridview()
        {
            SqlConnection con = new SqlConnection(connection);
            SqlDataAdapter Adp = new SqlDataAdapter("select * from TRANS_HISTORY", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}