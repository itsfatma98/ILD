using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace ILD
{
    public partial class ComingRequests : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Borrowing.request_number ,Device.name , Account.Fname, Borrowing.request_type FROM Borrowing" +
                     " JOIN Device ON Device.serial_number= Borrowing.serial_number " +
                     " JOIN Account ON Account.Id= Borrowing.user_id " +
                 "WHERE Borrowing.admin_response='pending'", con);


                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);


                RPTR_request.DataSource = Table;
                RPTR_request.DataBind();

                con.Close();
            }
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        protected void Reqnum_Click(object sender, EventArgs e)
        {

            int request_number = int.Parse(((LinkButton)sender).CommandArgument);
            (Session["request_number"]) = request_number;
            Response.Redirect("RequestForm.aspx");

        }


    }
}