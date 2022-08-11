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

    public partial class WebForm3 : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("select Device.serial_number, Device.name from Device ", con);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Edit_Devices.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string serial_number = ((Button)sender).CommandArgument;
            Session["serial_number"] = serial_number;
            Response.Write(Session["serial_number"]);
            Response.Redirect("Add_Edit_Devices.aspx");


        }
        protected void btnDel_Click(object sender, EventArgs e)
        {

            var id = int.Parse(((Button)sender).CommandArgument);
            string serial_number = ((Button)sender).CommandArgument;
            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            var cmd = new SqlCommand("delete from Device where serial_number= '" + serial_number + "'", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            //set feedback session
            Response.Redirect("DevicesMangement");

        }
    }
}