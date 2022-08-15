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
    public partial class DeviceReports : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string str = getConstring();
                con = new SqlConnection(str);
                con.Open();

                SqlCommand cmd = new SqlCommand("select Device.serial_number, Device.name , Device.total_quantity , Device.available_quantity from Device ", con);
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
    }
}