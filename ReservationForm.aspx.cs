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
    public partial class ReservationForm : System.Web.UI.Page
    {
        SqlConnection con;
        string userid;
        string deviceNum;

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
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

                con.Close();
            }

        }

        protected void Reservation_Form_Click(object sender, EventArgs e)

        {
           

            try
            {
                string str = GetConstring();
                con = new SqlConnection(str);
                con.Open();

                SqlCommand cmd1 = new SqlCommand("INSERT INTO Reservation(date,user_id,serial_number) values(@date,@user_id,@serial_number)", con);
                Response.Write("After sqlCommand! ");
                cmd1.Parameters.AddWithValue("@date", cal.Text.Trim());
                cmd1.Parameters.AddWithValue("@user_id", userid);
                cmd1.Parameters.AddWithValue("@serial_number", deviceNum);
                Response.Write("After ADDING! ");
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