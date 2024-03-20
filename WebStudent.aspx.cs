using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;

namespace databasecoursework
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox6.Text = row.Cells[1].Text;
            TextBox5.Text = row.Cells[2].Text;
            TextBox4.Text = row.Cells[3].Text;
            TextBox7.Text = row.Cells[4].Text;
            TextBox2.Text = row.Cells[5].Text;
            TextBox1.Text = row.Cells[6].Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox6.Text);
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"DELETE FROM STUDENT WHERE STUDENTID = {id}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox7.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            int studentid = Convert.ToInt32(TextBox6.Text);
            string studentname = TextBox5.Text;
            int contact = Convert.ToInt32(TextBox4.Text);
            string dob = TextBox7.Text;
            string emailaddress = TextBox2.Text;
            string country = TextBox1.Text;

            //MessageBox.Show(dob);
            //DateTime dateValue = DateTime.ParseExact(dob, "dd/MM/yyyy", null);
            string sql = "INSERT INTO Student (studentid, studentname, contact, dob, emailaddress, country) " +
                         "VALUES (:studentId, :studentName, :contact, :dob, :emailAddress, :country)";
            //string connectionstring = "DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123";

            using (OracleConnection connection = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123"))
            {
                using (OracleCommand command = new OracleCommand(sql, connection))
                {
                    // Add parameters
                    command.Parameters.Add(":studentId", OracleDbType.Int32).Value = studentid;
                    command.Parameters.Add(":studentName", OracleDbType.Varchar2).Value = studentname;
                    command.Parameters.Add(":contact", OracleDbType.Varchar2).Value = contact;
                    command.Parameters.Add(":dob", OracleDbType.Date).Value = dob;
                    command.Parameters.Add(":emailAddress", OracleDbType.Varchar2).Value = emailaddress;
                    command.Parameters.Add(":country", OracleDbType.Varchar2).Value = country;
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
                        Console.WriteLine("Error: " + ex.Message);
                    }
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int studentid = Convert.ToInt32(TextBox6.Text);
            string studentname = TextBox5.Text;
            int contact = Convert.ToInt32(TextBox4.Text);
            string dob = TextBox7.Text;
            string emailaddress = TextBox2.Text;
            string country = TextBox1.Text;

            //MessageBox.Show(dob);
            //DateTime dateValue = DateTime.ParseExact(dob, "dd/MM/yyyy", null);
            string sql = "UPDATE Student SET studentname = :studentname, contact = :contact, dob = :dob, emailaddress = :emailaddress, country = :country WHERE studentid = :studentid";
            //string connectionstring = "DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123";

            using (OracleConnection connection = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123"))
            {
                using (OracleCommand command = new OracleCommand(sql, connection))
                {
                    // Add parameters
                    command.Parameters.Add(":studentname", OracleDbType.Varchar2).Value = studentname;
                    command.Parameters.Add(":contact", OracleDbType.Varchar2).Value = contact;
                    command.Parameters.Add(":dob", OracleDbType.Date).Value = dob;
                    command.Parameters.Add(":emailaddress", OracleDbType.Varchar2).Value = emailaddress;
                    command.Parameters.Add(":country", OracleDbType.Varchar2).Value = country;
                    try
                    {
                        connection.Open();

                        // Execute the insert command
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Student data edited successfully.");
                            GridView1.DataBind();
                        }
                        else
                        {
                            MessageBox.Show("No rows were edited.");
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error: " + ex.Message);
                    }
                }
            }
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
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
