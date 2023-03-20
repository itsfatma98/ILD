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

    public partial class View_Admins : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("select Id, Fname, Lname from Account where account_type='admin'", con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);
                RPTR_device.DataSource = Table;
                RPTR_device.DataBind();

                con.Close();
            }
        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

      

       
        protected void Del_Click(object sender, EventArgs e)
        {
            // var id = int.Parse(((Button)sender).CommandArgument);
            string id_number = ((Button)sender).CommandArgument;
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Account where Id= '" + id_number + "'", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);

        }
    }
}