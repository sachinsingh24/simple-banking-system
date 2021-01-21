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
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void BtnHome_Click (object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow row = GridView1.SelectedRow;

            string ID = row.Cells[0].Text;

          //  Response.Redirect("default2.aspx ?firstname=" + TextBox1.Text + "&lastname=" + TextBox2.Text);
            // string ID = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("Transectionportal.aspx?Value=" + ID);
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TransferDetails.aspx");
        }
    }
}