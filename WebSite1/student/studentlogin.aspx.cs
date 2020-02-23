using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class student_studentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (uid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
            uid.Focus();
        }
        else if (pass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
            pass.Focus();
        }

        else
        {
            String u_id, u_pass, s;
            u_id = uid.Text;
            u_pass = pass.Text;
            s = "select * from Student_signup where u_id='" + u_id + "' and u_pass='" + u_pass + "'";
            SqlConnection cn = new SqlConnection("Data Source=abc\\sqlexpress;Initial Catalog=NSS;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                Response.Redirect("Student.aspx");
            }

            else
            {
                Label1.Visible = true;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        uid.Text = "";
        pass.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
}
    

