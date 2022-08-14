﻿using System;
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
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["serial_number"] != null)
            {
                sNum = Session["serial_number"].ToString();
               
                if (!IsPostBack)
                {
                        string strcon = GetConstring();
                        SqlConnection con = new SqlConnection(strcon);
                        con.Open();

                        SqlCommand cmd = new SqlCommand("SELECT * from Device where serial_number='" + sNum + "';", con);
                        //take query adapt query from table to dt table
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        //save qury results
                        dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            Serial.Text = dt.Rows[0]["serial_number"].ToString(); // name means your table column name 
                            DeviceName.Text = dt.Rows[0]["name"].ToString();
                            TextBox1.Text = dt.Rows[0]["description"].ToString();
                            Quantity.Text = dt.Rows[0]["total_quantity"].ToString();
                            type.Text = dt.Rows[0]["type"].ToString();
                        }
                    }
            }
            

        }

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            return constr;
        }
        /////////////////////////////////////////////////////////////////////////////////////////////// save changes click
        protected void saveChanges_Click(object sender, EventArgs e)    //add button click
        {
            //if (sNum != null)
            //{
               
                updatDevice();
            //}
            //else
            //{
            //    if (checkIfDeviceExsist())
            //    {
            //        Response.Write("<script>alert(' الجهاز مخزن في النظام');</script>");
            //    }

            //    else
            //    {
            //        addNewDevice();
            //    }
            //}
        }
        /////////////////////////////////////////////////////////////////////////////////////////////// add device method
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
                SqlCommand cmd = new SqlCommand("insert into Device (serial_number, name, description, total_quantity, available_quantity, picture, admin_id, type) values (@serial_number,@name,@description,@total_quantity,@available_quantity,@picture,@admin_id,@type)", con);
                //cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@serial_number", Serial.Text.Trim());
                cmd.Parameters.AddWithValue("@name", DeviceName.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@total_quantity", Quantity.Text.Trim());
                cmd.Parameters.AddWithValue("available_quantity", Quantity.Text.Trim());
                cmd.Parameters.AddWithValue("@picture", filepath);
                cmd.Parameters.AddWithValue("@admin_id", "1905424");
                cmd.Parameters.AddWithValue("@type", type.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('تم إضافة الجهاز بنجاح');</script>");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        /////////////////////////////////////////////////////////////////////////////////////////////// check if device exsist
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
       /////////////////////////////////////////////////////////////////////////////////////////////// update device method
        void updatDevice()
        {
            try
            {

                string strcon = GetConstring();
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                Response.Write( "hi");

                if (Serial.Text != dt.Rows[0]["serial_number"].ToString() | Serial.Text != "")
                {
                    Response.Write("f1");
                    SqlCommand cmd = new SqlCommand("UPDATE Device set serial_number=@serial_number'" + "'", con);
                    cmd.Parameters.AddWithValue("@serial_number", Serial.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                else if (DeviceName.Text != dt.Rows[0]["name"].ToString() | DeviceName.Text != "")
                {
                    Response.Write("f2");
                    SqlCommand cmd = new SqlCommand("UPDATE Device set name=@name'" + "'", con);
                    cmd.Parameters.AddWithValue("@name", DeviceName.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                else if (TextBox1.Text != dt.Rows[0]["description"].ToString() | TextBox1.Text != "")
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Device set description=@description'" + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.AddWithValue("@description", TextBox1.Text.Trim());
                }
                else if (Quantity.Text != dt.Rows[0]["total_quantity"].ToString() | Quantity.Text != "")
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Device set total_quantity=@total_quantity'" + "'", con);
                    cmd.Parameters.AddWithValue("@total_quantity", Quantity.Text.Trim());
                    cmd.ExecuteNonQuery();

                }

                else if (type.SelectedItem.Value != dt.Rows[0]["type"].ToString())
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Device set type=@type'" + "'", con);
                    cmd.Parameters.AddWithValue("@type", type.SelectedItem.Value);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    if (DeviceImg.HasFile)
                    {
                        string filepath = "";
                        string filename = Path.GetFileName(DeviceImg.PostedFile.FileName);
                        DeviceImg.SaveAs(Server.MapPath("DevicesImgs/" + filename));
                        filepath = "~/DevicesImgs/" + filename;
                        SqlCommand cmd = new SqlCommand("UPDATE Device set picture=@picture'" + "'", con);
                        cmd.Parameters.AddWithValue("@picture", filepath);
                        cmd.ExecuteNonQuery();

                    }
                }

                con.Close();
                Response.Write("<script>alert('Device Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }



        }
        }
    }




