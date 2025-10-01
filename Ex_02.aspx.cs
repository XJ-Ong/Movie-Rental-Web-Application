using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class Ex_02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            //List<string> languages = new List<string>();
            //lblFName.Text = txtFirstName.Text;
            //lblLName.Text = txtLastName.Text;
            //lblEmailDisplay.Text = txtEmail.Text;
            //if (rbtnMale.Checked)
            //{
            //    lblGenderDisplay.Text = "Male";
            //}
            //else
            //{
            //    lblGenderDisplay.Text = "Female";
            //}

            //for(int i = 0; i < cboxPLanguages.Items.Count; i++)
            //{
            //    if (cboxPLanguages.Items[i].Selected)
            //    {
            //        languages.Add(cboxPLanguages.Items[i].Text);
            //    }
            //    else
            //    {
            //        continue;
            //    }
            //}

            //lblFavLang.Text = string.Join(",", languages);

            // Solution: page request
            //Response.Redirect("displayResult.aspx?" +
            //    "&firstname=" + txtFirstName.Text +
            //    "&lastname=" + txtLastName.Text +
            //    "&email=" + txtEmail.Text +
            //    "&rbtnMale=" + rbtnMale.Checked +
            //    "&rbtnFemale=" + rbtnFemale.Checked +
            //    "&fpl=" + cboxPLanguages.Items
            //    );

            // Solution: sessions
            Session["firstname"] = txtFirstName.Text;
            Session["lastname"] = txtLastName.Text;
            Session["email"] = txtEmail.Text;
            Session["rbtnMale"] = rbtnMale.Checked;

            List<string> languages = new List<string>();

            for (int i = 0; i < cboxPLanguages.Items.Count; i++)
            {
                if (cboxPLanguages.Items[i].Selected)
                {
                    languages.Add(cboxPLanguages.Items[i].Text);
                }
                else
                {
                    continue;
                }
            }

            Session["fpl"] = languages;

            Response.Redirect("displayResult.aspx");
        }

        protected void rbtnMale_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void cboxPLanguages_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}