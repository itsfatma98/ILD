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
    public partial class BorrowingForm : System.Web.UI.Page
    {
        SqlConnection con;
        static string userid;
        static  string deviceNum;

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 

            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                userid = Session["id"].ToString();
                deviceNum = Session["deviceNum"].ToString();
                   

                    string str = GetConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Account where id='" + userid + "'", con);
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    id.Text = reader.GetString(0);
                    name.Text = reader.GetString(1) + " " + reader.GetString(2);
                    dep.Text = reader.GetString(6);
                }
                reader.Close();
                con.Close();

            }
            }
        }

        protected void Borrowing_Form_Click(object sender, EventArgs e)

        {
            try
            {
                string str = GetConstring();
                con = new SqlConnection(str);
                con.Open();


                SqlCommand cmd1 = new SqlCommand(" INSERT INTO Borrowing(start_date,duration,return_date,admin_response,status,serial_number,user_id,request_type,adminName) values(@start_date,@duration,@return_date,@admin_response,@status,@serial_number,@user_id,@request_type ,@adminName)", con);

                cmd1.Parameters.AddWithValue("@start_date", cal.Text.Trim());
                cmd1.Parameters.AddWithValue("@return_date", "");
                cmd1.Parameters.AddWithValue("@duration", duration.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@admin_response", "pending");
                cmd1.Parameters.AddWithValue("@status", "Not Active");
                cmd1.Parameters.AddWithValue("@serial_number", deviceNum);
                cmd1.Parameters.AddWithValue("@user_id", userid);
                cmd1.Parameters.AddWithValue("@request_type", "global");
                cmd1.Parameters.AddWithValue("@adminName","");
                cmd1.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}