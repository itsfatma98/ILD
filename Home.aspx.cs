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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        public static int visitors;

        protected void Page_Load(object sender, EventArgs e)
        {
            ++visitors;
            Response.Write("You are Here!");
            con = new SqlConnection(getConString());
            con.Open();
            
            getLocalData();
            getGlobalData();

            con.Close();
            con.Dispose();
        }

        public string getConString()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }

        //----------------------Get All local devices data ----------------------------
        public void getLocalData()
        {
            try{
                SqlCommand cmd = new SqlCommand("select * from [Table] where type='local'", con);


                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["local"] = Table;
                DA.Fill(Table);
                RPTR_local.DataSource = Table;
                RPTR_local.DataBind();
            }
            catch(Exception e){
                Response.Write("There is an exception when pulling local devices from the database!");
            }
        }

        //----------------------Get All global devices data ----------------------------
        public void getGlobalData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from [Table] where type='global'", con);


                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                Session["global"] = Table;
                DA.Fill(Table);
                RPTR_global.DataSource = Table;
                RPTR_global.DataBind();
            }
            catch (Exception e)
            {
                Response.Write("There is an exception when pulling global devices from the database!");
            }
        }

    }
}