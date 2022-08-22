using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace ILD
{
    public partial class UserForm : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        String userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    if (Session["Id"] == null)

                    {
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        userId = Session["Id"].ToString();

                        string str = getConstring();
                        con = new SqlConnection(str);
                        con.Open();
                        cmd = new SqlCommand("select * from Account where Id='" + userId + "'", con);
                        //cmd = new SqlCommand("select * from Account where Id='1911144'", con);
                        SqlDataReader reader;
                        reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            FirstName.Text = reader.GetString(1);
                            LastName.Text = reader.GetString(2);
                            depa.Text= reader.GetString(3);
                            Phonenumber.Text = reader.GetString(4);
                            email.Text = reader.GetString(3);
                        }
                        con.Close();

                    }
                }
                catch (Exception error)
                {
                    Console.WriteLine(error.Message);

                }
                DropDownList1.Items.Add("");
                DropDownList1.Items.Add("طلبات الاعارة");
                DropDownList1.Items.Add("طلبات الحجز");
                div1.Visible = false;
                div2.Visible = false;
            }

        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        [Obsolete]
        protected void Edit_Click(object sender, EventArgs e)
        {
            try
            {
                userId = Session["Id"].ToString();
                string str = getConstring();
                con = new SqlConnection(str);
                cmd = new SqlCommand("update Account set Fname=@fname, Lname=@lname, email=@email, phone=@phone, department_name=@dep where Id='" + userId + "'", con);
                con.Open();
                cmd.Parameters.Add("fname", Fname.Value.Trim().ToString());
                cmd.Parameters.Add("lname", Lname.Value.Trim().ToString());
                cmd.Parameters.Add("email", email1.Value.Trim().ToString());
                cmd.Parameters.Add("phone", num.Value.Trim().ToString());
                cmd.Parameters.Add("dep", depa.Value);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception error)
            {
                Console.WriteLine(error.Message);

            }
            Response.Redirect("UserForm.aspx");
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