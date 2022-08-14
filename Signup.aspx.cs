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
    public partial class Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }


        //sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Fname.Text == "" || Lname.Text == "" || id.Text == "" || department.SelectedItem.Value == "select" || phone.Text == "" || email.Text == "" || password.Text == "" || confirm_password.Text == "")
            {
                //  System.Windows.Forms.MessageBox.Show("الرجاء تعبئة جميع البيانات");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "errorInfo();", true);
                //  Response.Write("<script>alert('الرجاء تعبئة جميع البيانات');</script>");
            }
            else if (password.Text != confirm_password.Text)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "errorPassword();", true);
                //  Response.Write("<script>alert('كلمة المرور غير متطابقة');</script>");
                //mylabel.Visible = true;
                //mylabel.InnerText = "كلمة المرور غير متطابقة";
            }

            else
            {
                if (CheckUserExists())
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "error();", true);
                    //   Response.Write("<script>alert('الرقم الجامعي / الوظيفي مسجل من قبل');</script>");
                }
                else
                {
                    SignupNewUser();
                }

            }

            //---------------------------------------------------------------
            //user defined method
            bool CheckUserExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Account where Id='" + id.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }


            }

            //--------------------------------------------------------------------------

            //user defined method
            void SignupNewUser()
            {


                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO Account(Fname,Lname,Id,phone,email,password,department_name,account_type) values(@Fname,@Lname,@Id,@phone,@email,@password,@department_name,@account_type)", con);

                    cmd.Parameters.AddWithValue("@Fname", Fname.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@Lname", Lname.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@Id", id.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@phone", phone.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@email", email.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@Password", password.Text.Trim().ToString());
                    cmd.Parameters.AddWithValue("@department_name", department.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@account_type", "regular_user");
                    cmd.ExecuteNonQuery();


                    /* Session["id"] = id.Text.Trim();
                     Session["Fname"] = Fname.Text.Trim();
                     Session["password"] = password.Text.Trim();
                     Response.Redirect("Home.aspx");*/

                    //    Response.Redirect("Home.aspx");
                    //     Response.Write("<script>alert('Sign up Successful');</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
                    Session["id"] = id.Text.Trim().ToString();
                    Session["name"] = Fname.Text.Trim().ToString();
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
    }
}