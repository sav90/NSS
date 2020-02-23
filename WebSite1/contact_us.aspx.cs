using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;


public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    
    {
        String name, email, message;
        name = txtName.Text; email = txtEmail.Text; message = txtMessage.Text;
        SqlConnection sc = new SqlConnection();
        SqlCommand com = new SqlCommand();
        sc.ConnectionString = ("Data Source=abc\\sqlexpress;Initial Catalog=NSS;Integrated Security=True");
        sc.Open();
        com.Connection = sc;
        com.CommandText = (@"INSERT INTO CONTACTUS (name, email, message) VALUES ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMessage.Text + "');");
        com.ExecuteNonQuery();
        sc.Close();
        lbltxt.Visible = true;
        //Msg = null;
        lbltxt.Text = "Thanks for Contact us";
         // Clear the textbox valuess
            txtName.Text = "";
            txtMessage.Text = "";
            txtEmail.Text = "";
        
        
    }
}
