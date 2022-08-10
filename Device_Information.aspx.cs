using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ILD
{
    public partial class Device_Information : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(getConString());
            con.Open();

            con.Close();
            con.Dispose();
        }

        public string getConString()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }

        //----------------------Get All devices data ----------------------------
        public void getData()
        {
            try
            {
                //SqlCommand cmd = new SqlCommand("select * from [Table]", con);

                //cmd.CommandType = CommandType.Text;
                //SqlDataAdapter DA = new SqlDataAdapter(cmd);
                //DataTable Table = new DataTable();
                //Session["local"] = Table;
                //DA.Fill(Table);
                //devInfo.DataSource = Table;
                //devInfo.DataBind();
            }
            catch (Exception e)
            {
                Response.Write("There is an exception when getting the device information.");
            }
        }
    }
}