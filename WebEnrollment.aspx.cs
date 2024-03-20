using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;
using System.Xml.Linq;

namespace databasecoursework
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int studentid = Convert.ToInt32(TextBox1.Text);
            int courseid = Convert.ToInt32(TextBox2.Text);
            string enrolldate = TextBox3.Text;

            //DateTime dateValue = DateTime.ParseExact(enrolldate, "dd/MM/yyyy", null);
            string sql = "INSERT INTO ENROLLMENT (studentid, courseid, enrolldate) " +
                         "VALUES (:studentid, :courseid, :enrolldate)";
            //string connectionstring = "DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123";

            using (OracleConnection connection = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123"))
            {
                using (OracleCommand command = new OracleCommand(sql, connection))
                {
                    // Add parameters
                    command.Parameters.Add(":studentid", OracleDbType.Int32).Value = studentid;
                    command.Parameters.Add(":courseid", OracleDbType.Int32).Value = courseid;
                    command.Parameters.Add(":enrolldate", OracleDbType.Date).Value = enrolldate;
                    try
                    {
                        connection.Open();

                        // Execute the insert command
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Student data inserted successfully.");
                            GridView1.DataBind();
                        }
                        else
                        {
                            MessageBox.Show("No rows were inserted.");
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error: " + ex.Message);
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                int courseid = Convert.ToInt32(TextBox2.Text);
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"DELETE FROM ENROLLMENT WHERE STUDENTID = {id} AND COURSEID = {courseid}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[1].Text; ;
            TextBox2.Text = row.Cells[2].Text; ;
            TextBox3.Text = row.Cells[3].Text; ;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebStudent.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebEnrollment.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebStatus.aspx");
        }
    }
}