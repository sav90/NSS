using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class createact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\ADMIN\\Desktop\\WebSite1\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name, des, prec;
        name = TextBox1.Text; des = TextBox2.Text; prec = TextBox3.Text;
        SqlConnection cn = new SqlConnection("Data Source=abc\\sqlexpress;Initial Catalog=NSS;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandText="insert into ACTIVITY values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
        cmd.ExecuteNonQuery();
        cn.Close();
        Label1.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text="";
    }
}