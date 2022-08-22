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
    public partial class Requests_Reports1 : System.Web.UI.Page
    {
        SqlConnection con;

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("");
                DropDownList1.Items.Add("طلبات الاعارة");
                DropDownList1.Items.Add("طلبات الحجز");
                div1.Visible = false;
                div2.Visible = false;
            }


        }
        protected void reportClick(object sender, EventArgs e)
        {

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            if (DropDownList1.SelectedValue == "طلبات الاعارة")
            {
                div1.Visible = true;
                div2.Visible = false;
                // Borrowing requests table
                SqlCommand cmd = new SqlCommand("SELECT Device.name, Account.Fname, Borrowing.status, Borrowing.start_date, Borrowing.return_date, Borrowing.admin_id FROM Borrowing" +
                " JOIN Device ON Device.serial_number= Borrowing.serial_number " +
                " JOIN Account ON Account.Id= Borrowing.user_id", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["table"] = Table;
                DA.Fill(Table);
                bor_table.DataSource = Table;
                bor_table.DataBind();
                con.Close();
            }
            else if (DropDownList1.SelectedValue == "طلبات الحجز")
            {
                div2.Visible = true;
                div1.Visible = false;
                // Reservation requests table
                SqlCommand cmd = new SqlCommand("SELECT Device.name, Account.Fname, Reservation.date FROM Reservation" +
                " JOIN Device ON Device.serial_number= Reservation.serial_number " +
                " JOIN Account ON Account.Id= Reservation.user_id", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["table"] = Table;
                DA.Fill(Table);
                Repeater1.DataSource = Table;
                Repeater1.DataBind();
                con.Close();

            }
        }
    }
}