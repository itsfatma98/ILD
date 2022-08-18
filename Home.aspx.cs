using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Data;

namespace ILD
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        public static int visitors;
        public string top1;
        public static string d1, d2, d3, d4, d5;
        public static string l1, l2, l3, l4, l5, g1, g2, g3, g4, g5;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ++visitors;
                con = new SqlConnection(getConString());
                con.Open();

                getTop1();
                getGraphData();

                getLocalData();
                getGlobalData();

                con.Close();
                con.Dispose();
            }
        }

        public string getConString()
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
                RPTR_local.DataSource = Table;
                RPTR_local.DataBind();
            }
            catch (Exception)
            {
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
                RPTR_global.DataSource = Table;
                RPTR_global.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public void getGraphData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select top 5 name, type,counter from Device order by counter desc", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);

                d1 = Table.Rows[0][0].ToString();
                if (Table.Rows[0][1].ToString().Equals("local"))
                {
                    l1 = Table.Rows[0][2].ToString();
                    g1 = "0";
                }
                else
                {
                    l1 = "0";
                    g1 = Table.Rows[0][2].ToString();
                }

                d2 = Table.Rows[1][0].ToString();
                if (Table.Rows[1][1].ToString().Equals("local"))
                {
                    l2 = Table.Rows[1][2].ToString();
                    g2 = "0";
                }
                else
                {
                    l2 = "0";
                    g2 = Table.Rows[1][2].ToString();
                }

                d3 = Table.Rows[2][0].ToString();
                if (Table.Rows[2][1].ToString().Equals("local"))
                {
                    l3 = Table.Rows[2][2].ToString();
                    g3 = "0";
                }
                else
                {
                    l3 = "0";
                    g3 = Table.Rows[2][2].ToString();
                }

                d4 = Table.Rows[3][0].ToString();
                if (Table.Rows[3][1].ToString().Equals("local"))
                {
                    l4 = Table.Rows[3][2].ToString();
                    g4 = "0";
                }
                else
                {
                    l4 = "0";
                    g4 = Table.Rows[3][2].ToString();
                }

                d5 = Table.Rows[4][0].ToString();
                if (Table.Rows[4][1].ToString().Equals("local"))
                {
                    l5 = Table.Rows[4][2].ToString();
                    g5 = "0";
                }
                else
                {
                    l5 = "0";
                    g5 = Table.Rows[4][2].ToString();
                }

            }
            catch (Exception)
            {
            }
        }

        //---------------------- Getting the top1 device that has been ordered within the database ----------------------------//
        public void getTop1()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select top 1 name from Device order by counter desc", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);
                DataTable Table = new DataTable();
                DA.Fill(Table);

                top1 = Table.Rows[0][0].ToString();
            }
            catch (Exception)
            {
            }
        }

        //---------------------- When the button of the device is clicked ----------------------------//
        protected void deviceClicked(object sender, EventArgs e)
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