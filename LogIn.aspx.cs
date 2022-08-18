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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");

            }
            string str = getConstring();
            con = new SqlConnection(str);


        }
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        protected void login_Click(object sender, EventArgs e)
        {

            // mylabel.Visible = true;


            string ID = usid.Value;
            string pass = passw.Value;



            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("select * from Account where Id='" + ID + "'", con);
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {

                    string userid = reader.GetString(0);
                    string username = reader.GetString(1);
                    string userpass = reader.GetString(5);
                    string userType = reader.GetString(7);


                    if (ID == userid && pass == userpass)
                    {
                        Session["id"] = ID;
                        Session["name"] = username;
                        Session["userType"] = userType;
                        //Response.Redirect("Admin.aspx");
                        
                        if (String.Equals(userType, "admin"))
                        {
                            Response.Redirect("AdminProfile.aspx");
                        }
                        else
                        {
                            Response.Redirect("Home.aspx");
                        }

                        //{

                            //}

                    }


                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "errorInfo();", true);
                        //errorlabel.Text = "الرقم السري غير صحيح";

                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "error();", true);
                    errorlabel.Text = "الرقم الجامعي/الوظيفي غير مسجل";
                }

            }
            catch (Exception error)
            {
                Console.WriteLine(error.Message);

            }

            con.Close();

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void password(object sender, EventArgs e)
        {

        }

        //    bool CheckUserExists()
        //    {
        //        try
        //        {
        //            SqlConnection con = new SqlConnection(con);
        //            if (con.State == ConnectionState.Closed)
        //            {
        //                con.Open();
        //            }
        //            SqlCommand cmd = new SqlCommand("SELECT * from Account where Id='" + id.Text.Trim() + "';", con);
        //            SqlDataAdapter da = new SqlDataAdapter(cmd);
        //            DataTable dt = new DataTable();
        //            da.Fill(dt);
        //            if (dt.Rows.Count >= 1)
        //            {
        //                return true;
        //            }
        //            else
        //            {
        //                return false;
        //            }


        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert('" + ex.Message + "');</script>");
        //            return false;
        //        }


        //    }
    }
}