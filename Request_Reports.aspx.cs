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
    public partial class Request_Reports : System.Web.UI.Page
    {
        SqlConnection con;
        
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //string str = getConstring();
            //con = new SqlConnection(str);
            //con.Open();
            //    SqlCommand cmd = new SqlCommand("SELECT Device.name, Acount.Fname, Borrowing.status, Borrowing.start_date, Borrowing.return_date FROM Borrowing" +
            //        " JOIN Device ON Device.serial_number= Borrowing.serial_number " +
            //        " JOIN Account ON Account.Id= Borrowing.user_id ;" , con);
            //    cmd.CommandType = CommandType.Text;
            //    SqlDataAdapter DA = new SqlDataAdapter(cmd);
            //    DataTable Table = new DataTable();
            //Session["table"] = Table;
            //DA.Fill(Table);
            //    RPTR_device.DataSource = Table;
            //    RPTR_device.DataBind();

            //    con.Close();

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            

            // Current Borrowing requests table
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

      

    }
}