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
    public partial class RequestForm : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                con = new SqlConnection(GetConstring());
                con.Open();


                SqlCommand cmd = new SqlCommand("SELECT Borrowing.request_number ,Device.name, Borrowing.request_type , Account.Fname, Account.email, Account.Id, Account.phone, Account.department_name, Borrowing.start_date, Borrowing.duration FROM Borrowing" +
                  " JOIN Device ON Device.serial_number= Borrowing.serial_number " +
                  " JOIN Account ON Account.Id= Borrowing.user_id " +
               "WHERE Borrowing.request_number='" + Session["request_number"] + "'", con);


                SqlDataReader DR1 = cmd.ExecuteReader();




                if (DR1.Read())
                {
                    request_num.Text = DR1.GetValue(0).ToString(); ;
                    device_name.Text = DR1.GetValue(1).ToString(); ;
                    req_type.Text = DR1.GetValue(2).ToString(); ;
                    user_name.Text = DR1.GetValue(3).ToString();
                    email.Text = DR1.GetValue(4).ToString();
                    id.Text = DR1.GetValue(5).ToString();
                    phone.Text = DR1.GetValue(6).ToString();
                    department.Text = DR1.GetValue(7).ToString();
                    date1.Text = DR1.GetValue(8).ToString();
                    duration.Text = DR1.GetValue(9).ToString();
                    con.Close();
                    con.Dispose();
                }


            }
        }


        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        [Obsolete]
        protected void Button_click(object sender, EventArgs e)
        {

            
        
            string id = Session["id"].ToString();
            string admin_name = Session["name"].ToString();


            try
            {
                string str = GetConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlCommand myCommand = new SqlCommand("UPDATE Borrowing SET return_date= @return_date,admin_response=@admin_response,status=@status,admin_id=@admin_id,admin_name=@admin_name WHERE Borrowing.request_number='" + Session["request_number"] + "'", con);
                SqlCommand DeviceCom = new SqlCommand("UPDATE Device SET available_quantity=@available_quantity", con);


                if (acc.Checked)
                {

                    myCommand.Parameters.AddWithValue("@return_date", date2.Text.Trim());
                    myCommand.Parameters.AddWithValue("@admin_response", "accepted");
                    myCommand.Parameters.AddWithValue("@status", "not_returned");
                    myCommand.Parameters.AddWithValue("@admin_id", id);
                    myCommand.Parameters.AddWithValue("@admin_name", admin_name);
                    //DeviceCom.Parameters.AddWithValue("@available_quantity", );
                    myCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('تم قبول الطلب بنجاح');</script>");

                }
                else
                {
                    myCommand.Parameters.AddWithValue("@return_date", "");
                    myCommand.Parameters.AddWithValue("@admin_response", "declined");
                    myCommand.Parameters.AddWithValue("@status", "");
                    myCommand.Parameters.AddWithValue("@admin_id", id);
                    myCommand.Parameters.AddWithValue("@admin_name", admin_name);
                    myCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('تم رفض الطلب بنجاح');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string id = Session["id"].ToString();
            string admin_name = Session["name"].ToString();


            try
            {
                string str = GetConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlCommand myCommand = new SqlCommand("UPDATE Borrowing SET return_date= @return_date,admin_response=@admin_response,status=@status,admin_id=@admin_id,admin_name=@admin_name WHERE Borrowing.request_number='" + Session["request_number"] + "'", con);
                SqlCommand DeviceCom = new SqlCommand("UPDATE Device SET available_quantity=@available_quantity", con);


                if (acc.Checked)
                {

                    myCommand.Parameters.AddWithValue("@return_date", date2.Text.Trim());
                    myCommand.Parameters.AddWithValue("@admin_response", "accepted");
                    myCommand.Parameters.AddWithValue("@status", "not_returned");
                    myCommand.Parameters.AddWithValue("@admin_id", id);
                    myCommand.Parameters.AddWithValue("@admin_name", admin_name);
                    //DeviceCom.Parameters.AddWithValue("@available_quantity", );
                    myCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('تم قبول الطلب بنجاح');</script>");

                }
                else
                {
                    myCommand.Parameters.AddWithValue("@return_date", "");
                    myCommand.Parameters.AddWithValue("@admin_response", "declined");
                    myCommand.Parameters.AddWithValue("@status", "");
                    myCommand.Parameters.AddWithValue("@admin_id", id);
                    myCommand.Parameters.AddWithValue("@admin_name", admin_name);
                    myCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('تم رفض الطلب بنجاح');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}