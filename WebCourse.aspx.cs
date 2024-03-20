using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace databasecoursework
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection con;
            con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");

            con.Open();
            OracleCommand cmd = con.CreateCommand();
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                string title = TextBox2.Text;
                string description = TextBox3.Text;
                cmd.CommandText = "INSERT INTO Course values (" + id + ", '" + title + "', '" + description + "')";
                cmd.CommandType = System.Data.CommandType.Text;
                int rows = cmd.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Inserted succesfully");
                }
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
            catch (Exception ex)
            {
                MessageBox.Show("Please check the values and try again.");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"DELETE FROM COURSE WHERE COURSEID = {id}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            catch
            {
                MessageBox.Show("Provide ID of the item that you want to delete.");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                string title = TextBox2.Text;
                string description = TextBox3.Text;
                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");
                con.Open();
                OracleCommand cmd = con.CreateCommand();
                cmd.CommandText = $"UPDATE COURSE SET COURSETITLE='{title}', COURSEDETAILS='{description}' WHERE COURSEID = {id}";
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Please select the row from the table so that you can change the value.");
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