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
        public static string devName;
        public static string devDesc;
        public static string devNum;
        public static string devPic;
        public static string devType;
        public static Boolean available = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(getConString());
                con.Open();

                getData();

                con.Close();
                con.Dispose();
            }
        }

        public string getConString()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        //---------------------- Get The devices data ----------------------------//
        public void getData()
        {
            try
            {
                devNum = Session["deviceNum"].ToString();
                //Response.Write("sd" + devNum);
                SqlCommand cmd = new SqlCommand("select name, type, description, serial_number,picture from Device where serial_number='" + devNum + "'", con);

                cmd.CommandType = CommandType.Text;
                SqlDataAdapter DA = new SqlDataAdapter(cmd);

                DataTable Table = new DataTable();
                DA.Fill(Table);

                //devInfo.DataSource = Table;
                //devInfo.DataBind();

                //Store the data taken from the database to a public string to get access in the HTML page
                devName = Table.Rows[0][0].ToString();
                devType = Table.Rows[0][1].ToString();
                devDesc = Table.Rows[0][2].ToString();
                devNum = Table.Rows[0][3].ToString();
                devPic = Table.Rows[0][4].ToString();

            }
            catch (Exception e)
            {
                //Response.Write(" There is an exception when getting the device information.");
            }
        }

        //---------------------- When the button is clicked ----------------------------//
        protected void orderClicked(object sender, EventArgs e)
        {
            SqlConnection cons = new SqlConnection(getConString());
            cons.Open();

            SqlCommand cmd = new SqlCommand("select available_quantity from Device where serial_number='" + devNum + "'", cons);
            //int count = Convert.ToInt32(cmd.ExecuteScalar());
            int count = 5;

            if (count > 0)
            {
                available = true;
            }
            else
            {
                available = false;
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "notAvailable();", true);
                // button1.Enabled = false;

            }
            devNum = Session["deviceNum"].ToString();

            Session["deviceNum"] = devNum;

                //Here we check if the type of the device is either local or global
                if (devType.Equals("local"))
                {
                    //if local it will go to reservation form else to borrowing form
                    Response.Redirect("ReservationForm.aspx");
                }
                else
                {
                    Response.Redirect("BorrowingForm.aspx");
                }

                cons.Close();
                cons.Dispose();
            }
        }
    }
