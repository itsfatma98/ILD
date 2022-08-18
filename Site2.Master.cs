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
    public partial class Site2 : System.Web.UI.MasterPage
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ACCIcon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
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
                    Response.Redirect("Admin.aspx");
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

        
        }
    }
