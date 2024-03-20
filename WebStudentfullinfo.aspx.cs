using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;

namespace databasecoursework
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int data = Convert.ToInt32(TextBox1.Text);
                string query = $@"
    SELECT s.*, e.enrolldate, c.coursetitle
    FROM student s
    INNER JOIN enrollment e ON s.studentid = e.studentid
    INNER JOIN course c ON e.courseid = c.courseid
    WHERE s.studentid = {data}
";


                OracleConnection con;
                con = new OracleConnection("DATA SOURCE=localhost:1521/xe;TNS_ADMIN=\"C:\\Users\\ASUS TUF F15\\Oracle\\network\\admin\";USER ID='\"C##COURSEWORK\"';PASSWORD=admin123");

                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                GridView1.DataSource = dataTable;

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
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