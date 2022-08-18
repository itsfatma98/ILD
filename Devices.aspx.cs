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
    public partial class Devices : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(getConString());
                con.Open();

                getLocalData();
                getGlobalData();

                con.Close();
                con.Dispose();
            }
        }

        private string getConString()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        //---------------------- Get All local devices data ----------------------------//
        public void getLocalData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from Device where type='local'", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["local"] = Table;
                DA.Fill(Table);
                localRPTR.DataSource = Table;
                localRPTR.DataBind();
            }
            catch (Exception e)
            {
                Response.Write("There is an exception when pulling local devices from the database!");
            }
        }

        //---------------------- Get All global devices data ----------------------------//
        public void getGlobalData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from Device where type='global'", con);


                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["global"] = Table;
                DA.Fill(Table);
                globalRPTR.DataSource = Table;
                globalRPTR.DataBind();
            }
            catch (Exception e)
            {
                Response.Write("There is an exception when pulling global devices from the database!");
            }
        }

        //---------------------- When the button of the device is clicked ----------------------------//
        protected void deviceClick(object sender, EventArgs e)
        {
            con = new SqlConnection(getConString());
            con.Open();

            string devNum = ((LinkButton)sender).CommandArgument;
            Session["deviceNum"] = devNum;
            Response.Redirect("Device_Information.aspx");

            con.Close();
            con.Dispose();
        }
    }
}