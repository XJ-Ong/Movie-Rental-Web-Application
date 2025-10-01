using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDatetime.Text = DateTime.Now.ToString();
            if (Session["CID"] != null)
            {
                lblWelcome.Text = "Welcome Back, " + Session["fullname"].ToString();
                lbtnLogin.Visible = false;
                lbtnReg.Visible = false;
            }
            else
            {
                lblWelcome.Text = "Welcome, Guest";
                lbtnMP.Visible = false;
                lbtnLogout.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* block comment
             can have multiple lines*/

            // single line comment

            // variable declaration

            // data type var_name = ?;

            //int age = 0; // assign initial value to avoid garbage values/memory leaks
            //string name = "Peter";
            //double price = 10.5;
            //float score = 9.99;

            // Display the server's date and time
        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void lbtnMP_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageProfile.aspx");
        }
    }
}