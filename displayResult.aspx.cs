using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class displayResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // retrieve values from URL
            //string firstname = Request.QueryString["firstname"];
            //string lastname = Request.QueryString["lastname"];
            //string email = Request.QueryString["email"];
            //string rdoMale = Request.QueryString["rbtnMale"];
            //string rdoFemale = Request.QueryString["rbtnFemale"];
            //lblFName.Text = firstname;
            //lblLName.Text = lastname;
            //lblEmailDisplay.Text = email;

            //if (rdoMale == "Male")
            //{
            //    lblGenderDisplay.Text = rdoMale;
            //}
            //else
            //{
            //    lblGenderDisplay.Text = rdoFemale;
            //}

            // session

            if (Session["firstname"] == null ||
                Session["lastname"] == null ||
                    Session["email"] == null
                )
            {
                Response.Redirect("Ex_02.aspx");
            }

            lblFName.Text = Session["firstname"].ToString();
            lblLName.Text = Session["lastname"].ToString();
            lblEmailDisplay.Text = Session["email"].ToString();
            bool malechecked = (bool)Session["rbtnMale"];
            List<string> languages = (List<string>)Session["fpl"];

            if(malechecked)
            {
                lblGenderDisplay.Text = "Male";
            }
            else
            {
                lblGenderDisplay.Text = "Female";
            }

            string fpl = string.Join(", ", languages);
            lblFavLang.Text = fpl;
        }
    }
}