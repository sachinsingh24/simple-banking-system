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
    public partial class Transectionportal : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["SparkFoundationConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Dropdownlist();
            }
            TextBox4.Visible = false;
            UpdatedGridview();
           
        }
        public void UpdatedGridview()
        {
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("Select * from userdetails where ID = '" + Convert.ToInt32(Request.QueryString["Value"].ToString()) +"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public void TransferCreditFrom()
        {
            
            SqlConnection con = new SqlConnection(connection);
            
            string myquery = "Select * from userdetails where ID = '" + Convert.ToInt32(Request.QueryString["Value"].ToString()) + "'";
            SqlCommand selectCMD = new SqlCommand(myquery, con);
            selectCMD.CommandTimeout = 30;
            SqlDataAdapter customerDA = new SqlDataAdapter();
            customerDA.SelectCommand = selectCMD;
            con.Open();
            DataSet ds = new DataSet();
            customerDA.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox4.Text = ds.Tables[0].Rows[0]["CREDIT"].ToString();
                TextBox4.Visible = false;
            }
        }
        public void Dropdownlist ()
        { 
                SqlConnection con = new SqlConnection(connection);
                SqlDataAdapter da = new SqlDataAdapter("select * from userdetails",con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ds.Tables[0].Columns.Add("NameAndcredit", typeof(string), "[NAME] +' | '+ [CREDIT] ");
            ddluserdetail.DataValueField = "ID";
            ddluserdetail.DataTextField = "NameAndcredit";
            ddluserdetail.DataSource = ds;
            ddluserdetail.DataBind();
            ddluserdetail.Items.Insert(0, new ListItem("select name to transfer", "0"));
             
        }
        protected void BackButton_Click (object sender, EventArgs e)
        {
            Response.Redirect("UserDetails.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TransferCreditFrom();
            int a = Convert.ToInt32(TextBox4.Text);
            int b = Convert.ToInt32(TextBox5.Text);
            string message = "insufficient balance";
            
            if (a > b)
            {
                
                UPDATE();
                INSERT();
                string ID = Request.QueryString["Value"];
                string ID2 = ddluserdetail.SelectedValue;
                Response.Redirect("UpdatedDetail.aspx?first=" + ID + "&second=" + ID2);
            }
            else
            {
                Response.Write("<script>alert('" + message + "');</script>");
            }
        }
        public void INSERT()
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("InsertedHistory", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@from_id", Convert.ToInt32(Request.QueryString["Value"].ToString()));
            sqlCmd.Parameters.AddWithValue("@to_id",ddluserdetail.SelectedValue);
            sqlCmd.Parameters.AddWithValue("@amount",TextBox5.Text);
            sqlCmd.ExecuteNonQuery();
            con.Close();
        }
        public void UPDATE()
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("AmountTransferCalculation", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@id_firstperson", Convert.ToInt32(Request.QueryString["Value"].ToString()));
            sqlCmd.Parameters.AddWithValue("@id_secondperson", ddluserdetail.SelectedValue);
            sqlCmd.Parameters.AddWithValue("@Transfer_Amount", TextBox5.Text);
            sqlCmd.ExecuteNonQuery();
            con.Close();
        }
    }
}