using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.CodeDom;

namespace EmployeeWebApplication
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //Fatching data from the textboxs

            string fname=txtfname.Text;
            string lname=txtlname.Text;
            int age =Convert.ToInt32(txtage.Text);
            int sal=Convert.ToInt32(txtSalary.Text);

            // Now I going to instert above fatching Data into database

            string cs = "data source = BLR1-LHP-N84399\\SQLEXPRESS; database = EmpDB; Integrated security = true";

            SqlConnection con = new SqlConnection(cs);

            string query = string.Format("insert into Emp values('{0}','{1}',{2},{3})"
                ,fname,lname,age,sal);

            SqlCommand cmd = new SqlCommand(query,con);

            // To exucute this command We opening the command
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Good Job','record inserted!...','Success')", true);

            txtfname.Text = "";
            txtlname.Text = "";
            txtage.Text = "";
            txtSalary.Text = "";
           
        }

        protected void btncancle_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtage.Text = "";
            txtSalary.Text = "";

        }
    }
}