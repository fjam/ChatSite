using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Chat_Program
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["text"] == null)
                {
                    Application["text"] = "";
                }

                if (Session["username"] != null)
                {
                    TextBox3.Text = Session["username"].ToString();
                    Label1.Text = Session["username"].ToString();
                }
            }
            TextBox2.Text = Application["text"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Application["text"] = TextBox2.Text += Session["username"] + ": ";
            Application["text"] = TextBox2.Text += TextBox1.Text;
            Application["text"] = TextBox2.Text += "\r\n";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            //TextBox3.Text = Session["username"].ToString();
            Session["username"] = TextBox3.Text;
            Label1.Text = Session["username"].ToString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }
    }
}