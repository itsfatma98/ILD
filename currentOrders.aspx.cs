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
    public partial class currentOrders : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();

                // Current Borrowing requests table
                SqlCommand cmd = new SqlCommand("SELECT Borrowing.request_number ,Device.name , Account.Fname, Borrowing.request_type FROM Borrowing" +
                    " JOIN Device ON Device.serial_number= Borrowing.serial_number " +
                    " JOIN Account ON Account.Id= Borrowing.user_id " +
                 "WHERE Borrowing.admin_response='accepted' AND Borrowing.status= 'not returned' ; ", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["table"] = Table;
                DA.Fill(Table);
                bor_table.DataSource = Table;
                bor_table.DataBind();



                //string Date = DateTime.Now.ToString("dd-MM-yy");
                //Response.Write(Date);

                // Current Reservations table
                cmd = new SqlCommand("SELECT Reservation.request_number ,Device.name , Account.Fname, Reservation.date FROM Reservation" +
                        " JOIN Device ON Device.serial_number= Reservation.serial_number " +
                        " JOIN Account ON Account.Id= Reservation.user_id " +
                        " WHERE Reservation.date= CAST( GETDATE() AS DATE) ;", con);

                cmd.CommandType = CommandType.Text;
                DA = new SqlDataAdapter(cmd);
                Table = new DataTable();
                Session["table"] = Table;
                DA.Fill(Table);
                rse_table.DataSource = Table;
                rse_table.DataBind();
                con.Close();


            }
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }


        protected void btnReturn_Click(object sender, EventArgs e)
        {
            // CheckBox chk = (CheckBox)sender;
            //if (chk.Checked){
            //string request_number = ((CheckBox)sender).CommandArgument;          }

            string request_number = ((Button)sender).CommandArgument;
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            var cmd = new SqlCommand("delete from Borrowing where request_number= " + request_number + "", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            //set feedback session
            Response.Redirect("currentOrders.aspx");

        }
    }
}