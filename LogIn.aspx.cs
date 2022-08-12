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
    public partial class Login2 : System.Web.UI.Page
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
                        Session["password"] = userpass;
                        Session["userType"] = userType;
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {

                    }
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
    }
}