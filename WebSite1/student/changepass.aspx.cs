using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class student_changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        SqlConnection cn = new SqlConnection("Data Source=abc\\sqlexpress;Initial Catalog=NSS;Integrated Security=True");
        cn.Open();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from Student_signup where u_pass='" + txtcurrentpass.Text + "'", cn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count == 0)
        {
            lblmsg.Text = "Invalid current password";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SQLAdapter = new SqlDataAdapter("update Student_signup set u_pass='" + txtnewpass.Text + "' ", cn);
            SQLAdapter.Fill(DT);
            SQLAdapter = new SqlDataAdapter("update Student_signup set c_pass='" + txtnewpass.Text + "'", cn);
            SQLAdapter.Fill(DT);
            lblmsg.Text = "Password changed successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }
    }
}