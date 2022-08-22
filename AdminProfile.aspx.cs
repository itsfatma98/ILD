using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ILD
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        String userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                            fname.Value = reader.GetString(1);
                            lname.Value = reader.GetString(2);
                            num.Value = reader.GetString(4);
                            email.Value = reader.GetString(3);
                        }
                        con.Close();

                    }
                }
                catch (Exception error)
                {
                    Console.WriteLine(error.Message);

                }
            }
        }


        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                userId = Session["Id"].ToString();
                string str = getConstring();
                con = new SqlConnection(str);
                cmd = new SqlCommand("update Account set Fname=@fname, Lname=@lname, email=@email, phone=@phone where Id='" +userId +"'", con);
                con.Open();
                cmd.Parameters.Add("fname", fname.Value.Trim().ToString());
                cmd.Parameters.Add("lname", lname.Value.Trim().ToString());
                cmd.Parameters.Add("email", email.Value.Trim().ToString());
                cmd.Parameters.Add("phone", num.Value.Trim().ToString());
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception error)
            {
                Console.WriteLine(error.Message);

            }
            Response.Redirect("AdminProfile.aspx");
        }
    }
}








    