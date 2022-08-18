using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace ILD
{
    public partial class Add_Edit_Devices : System.Web.UI.Page
    {
        string sNum;
        static string globalFilePath;
        static int actualStock, currentStock, issuedBook;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["serial_number"] != null)
            {
                sNum = Session["serial_number"].ToString();
                if (!IsPostBack)
                {
                    if (sNum != null)
                    {
                        string strcon = GetConstring();
                        SqlConnection con = new SqlConnection(strcon);
                        con.Open();

                        SqlCommand cmd = new SqlCommand("SELECT * from Device where serial_number='" + sNum + "';", con);
                        //take query adapt query from table to dt table
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        //save qury results
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            Serial.Text = dt.Rows[0]["serial_number"].ToString(); // name means your table column name 
                            DeviceName.Text = dt.Rows[0]["name"].ToString();
                            TextBox1.Text = dt.Rows[0]["description"].ToString();
                            Quantity.Text = dt.Rows[0]["total_quantity"].ToString();
                            //  DeviceImg. = dt.Rows[0]["picture"].ToString();
                            type.Text = dt.Rows[0]["type"].ToString();



                        }

                    }

                }
            }

        }

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }

        protected void saveChanges(object sender, EventArgs e)    //add button click
        {
          
            if (sNum != null)
            {
               
                updatDevice();
            }
            else
            {

                if (checkIfDeviceExsist())
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "fail();", true);
                }
                else
                {
                    addNewDevice();
                }

                //}

            }

            void addNewDevice()

            {
                try
                {
                    string strcon = GetConstring();
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();


                    string filepath = "";
                    string filename = Path.GetFileName(DeviceImg.PostedFile.FileName);
                    DeviceImg.SaveAs(Server.MapPath("DevicesImgs/" + filename));
                    filepath = "~/DevicesImgs/" + filename;



                    //query
                    SqlCommand cmd = new SqlCommand("insert into Device (serial_number, name, description, total_quantity, available_quantity, picture, type, counter) values (@serial_number,@name,@description,@total_quantity,@available_quantity,@picture,@type,@counter )", con);
                    //cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@serial_number", Serial.Text.Trim());
                    cmd.Parameters.AddWithValue("@name", DeviceName.Text.Trim());
                    cmd.Parameters.AddWithValue("@description", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@total_quantity", Quantity.Text.Trim());
                    cmd.Parameters.AddWithValue("available_quantity", Quantity.Text.Trim());
                    cmd.Parameters.AddWithValue("@picture", filepath);
                    cmd.Parameters.AddWithValue("@type", type.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@counter", "0");
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
                    globalFilePath = filepath;
                    //actualStock=

                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

            //check if device exsisit
            bool checkIfDeviceExsist()
            {
                try
                {
                    //connect with data base using strcon which hol connection string
                    string strcon = GetConstring();
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    //query
                    SqlCommand cmd = new SqlCommand("SELECT * from Device where serial_number='" + Serial.Text.Trim() + "';", con);
                    //take query adapt query from table to dt table
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //save qury results
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

            void updatDevice()
            {
                try
                {
                    
                  
                    string filepath = "";
                    string filename = Path.GetFileName(DeviceImg.PostedFile.FileName);
                    Response.Redirect(filename);
                    if (filename == "" || filename == null)
                    {
                        filepath = globalFilePath;

                    }
                    else
                    {
                        DeviceImg.SaveAs(Server.MapPath("DevicesImgs/" + filename));
                        filepath = "~/DevicesImgs/" + filename;
                    }

                    string strcon = GetConstring();
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE Device set serial_number=@serial_number, name=@name, description=@description, total_quantity=@total_quantity, picture=@picture, type=@type WHERE serial_number= '"+sNum+"'", con);
                    cmd.Parameters.AddWithValue("@serial_number", Serial.Text.Trim());
                    cmd.Parameters.AddWithValue("@name", DeviceName.Text.Trim());
                    cmd.Parameters.AddWithValue("@description", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@total_quantity", Quantity.Text.Trim());
                    cmd.Parameters.AddWithValue("@picture", filepath);
                    cmd.Parameters.AddWithValue("@type", type.SelectedItem.Value);
                 
                    cmd.ExecuteNonQuery();
                    
                    con.Close();
                    sNum = null;
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "update();", true);

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

                



            }


        }
    }
}











