using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class ManageProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                txtEmail.Text = Session["email"].ToString();
                txtFirstName.Text = Session["firstname"].ToString();
                txtLastName.Text = Session["lastname"].ToString();
                txtAge.Text = Session["age"].ToString();
                if (Session["gender"].ToString() == "Male")
                {
                    rdoGender.SelectedIndex = 0;
                }
                else
                {
                    rdoGender.SelectedIndex = 1;
                }
                ddlCountry.SelectedValue = Session["country"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            lblMsg.Text = "Profile updated";
            Session["firstname"] = txtFirstName.Text;
            Session["lastname"] = txtLastName.Text;
            Session["age"] = txtAge.Text;
            if (rdoGender.SelectedIndex == 0)
            {
                Session["gender"] = "Male";
            }
            else
            {
                Session["gender"] = "Female";
            }
            Session["country"] = ddlCountry.SelectedValue;
        }
    }
}