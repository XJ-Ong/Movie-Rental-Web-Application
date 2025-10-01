using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class CustomerRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPicture.HasFile)
            {
                if (txtPicture.PostedFile.ContentType != "image/jpeg" && txtPicture.PostedFile.ContentType != "image/png")
                {
                    lblPicture.Text = "Only JPEG or PNG files are allowed";
                    return;
                }
                else
                {
                    string savePath = Server.MapPath("~/Images/");
                    string filePath = System.IO.Path.Combine(savePath, txtPicture.FileName);
                    txtPicture.SaveAs(filePath);
                    lblPicture.Text = txtPicture.FileName;
                    lblDateTime.Text = DateTime.Now.ToString();
                    SqlDataSource1.Insert();
                    lblMsg.Text = "Account successfully created";
                }
            }
            else
            {
                lblPicture.Text = "Please upload a picture";
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}