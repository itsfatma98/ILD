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
using System.Net.Mail;
using System.Net;

namespace ILD
{
    public partial class ForgetPass1 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("error");

            }

        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }


        protected void password(object sender, EventArgs e)
        {

            string email = useremail.Value;
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Account where email='" + email.Trim() + "'", con);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                string useremail = reader.GetString(3);
                string userpass = reader.GetString(5);


                if (email == useremail)
                {
                    Send(useremail, userpass);
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "error();", true);

                }




            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "errorInfo();", true);

            }


        }

        protected void Send(string to, string pass)
        {

            string from = "borrowingg2@gmail.com";
            string password = "bulefgqvscnbmjht";

            string body = "your password is " + pass;

            using (MailMessage emailMessage = new MailMessage())
            {
                emailMessage.From = new MailAddress(from);
                emailMessage.To.Add(new MailAddress(to));
                emailMessage.Subject = "طلب استعادة كلمة المرور";
                emailMessage.Body = "مرحبا بكم في نظام اعارة معمل أجهزة الإبتكارات \n \n  كلمة المرور هي:" + pass;
                emailMessage.Priority = MailPriority.Normal;
                using (SmtpClient MailClient = new SmtpClient("smtp.gmail.com", 587))
                {
                    MailClient.EnableSsl = true;
                    MailClient.UseDefaultCredentials = false;
                    MailClient.Credentials = new System.Net.NetworkCredential(from, password);
                    MailClient.Send(emailMessage);
                }
            }
        }
    }


}