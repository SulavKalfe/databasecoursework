using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Windows;

namespace databasecoursework
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            string name = TextBox2.Text;
            string email = TextBox3.Text;
            int courseid = Convert.ToInt32(TextBox4.Text);

            OracleConnection con;



            con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");

            con.Open();
            OracleCommand cmd = con.CreateCommand();
            try
            {
                cmd.CommandText = "INSERT INTO INSTRUCTOR values (" + id + ", '" + name + "', '" + email + "', " + courseid + ")";
                cmd.CommandType = System.Data.CommandType.Text;
                int rows = cmd.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Inserted succesfully");
                }
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (Exception ex) {
                MessageBox.Show("Please check the values and try again.");
            }
            }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[1].Text;
            TextBox2.Text = row.Cells[2].Text;
            TextBox3.Text = row.Cells[3].Text;
            TextBox4.Text = row.Cells[4].Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                string name = TextBox2.Text;
                string email = TextBox3.Text;
                int courseid = Convert.ToInt32(TextBox4.Text);
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"UPDATE INSTRUCTOR SET COURSEINSTRUCTORNAME='{name}', COURSEINSTRUCTOREMAIL='{email}', COURSEID = {courseid}  WHERE CourseInstructorID = {id}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Please select the row from the table so that you can change the value.");
                MessageBox.Show(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"DELETE FROM INSTRUCTOR WHERE COURSEINSTRUCTORID = {id}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch
            {
                MessageBox.Show("Provide ID of the item that you want to delete.");
            }
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