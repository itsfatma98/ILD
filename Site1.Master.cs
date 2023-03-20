using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ILD
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //We wanted some of the header content to be visible
                if (Session["id"].Equals(""))
                {
                    ACCIcon.Visible = true;    //Account icon set to true

                    ProfileB.Visible = false;  //Profile should be set to false
                    LogoutB.Visible = false;   //Logout should be set false 
                    welcome.Visible = false;
                }
                else
                {
                    ProfileB.Visible = true;
                    LogoutB.Visible = true;
                    welcomeUser();
                    ACCIcon.Style.Add(HtmlTextWriterStyle.Cursor, "default");
                    ACCIcon.Enabled = false;
                }
            }
            catch (Exception)
            {

            }
        }

        protected void ACCIcon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        protected void ProfileB_Click(object sender, EventArgs e)
        {
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            string id = Session["id"].ToString();
            try
            {
                SqlCommand cmd = new SqlCommand("select account_type from Account where id='" + id + "'", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);

                if (Table.Rows[0][0].ToString().Equals("admin"))
                {
                    Response.Redirect("AdminProfile.aspx");
                }
                else
                {
                    Response.Redirect("UserForm.aspx");
                }
            }
            catch (Exception)
            {

            }
        }

        protected void LogoutB_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Home.aspx");
        }

        public void welcomeUser()
        {
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            string id = Session["id"].ToString();
            try
            {
                SqlCommand cmd = new SqlCommand("select Fname from Account where id='" + id + "'", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);

                string name = Table.Rows[0][0].ToString();
                welcome.Text = "مرحباً، " + name;

                welcome.Visible = true;
                welcome.Enabled = false;

            }
            catch (Exception)
            {

            }
        }
    }
}