using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class manageMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            if (Session["AID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string fileExtension = Path.GetExtension(fuPicture.FileName).ToLower();   
            if (fuPicture.HasFile)
            {
                if(fileExtension == ".jpg" || fileExtension == ".png" || fileExtension == ".jpeg")
                {
                    string savePath = Server.MapPath("Images//" + fuPicture.FileName);
                    fuPicture.SaveAs(savePath);

                    lblFilename.Text = "~/images/" + fuPicture.FileName;

                    SqlDataSource1.Insert();
                    lblMessage.Text = "Movie added successfully";
                }
                else
                {
                    Response.Write("<script>alert('Invalid file type, only PNG and JPG are allowed.)</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select an image to upload.')</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["MID"] = GridView1.SelectedRow.Cells[1].Text;
            txtTitle.Text = GridView1.SelectedRow.Cells[2].Text;
            ddlGenre.Text = GridView1.SelectedRow.Cells[3].Text;
            txtYear.Text = GridView1.SelectedRow.Cells[4].Text;
            txtRating.Text = GridView1.SelectedRow.Cells[5].Text;
            lblFilename.Text = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lblMessage.Text = "Movie has been deleted!";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!fuPicture.HasFile)
            {
                SqlDataSource1.Update();
                lblMessage.Text = "Movie has been updated!";
            }
            else
            {
                string deletePath = Server.MapPath(lblFilename.Text);
                File.Delete(deletePath);

                string fileExtension = Path.GetExtension(fuPicture.FileName).ToLower();
                if (fileExtension == ".jpg" || fileExtension == ".png" || fileExtension == ".jpeg")
                {
                    string savePath = Server.MapPath("Images//" + fuPicture.FileName);
                    fuPicture.SaveAs(savePath);

                    lblFilename.Text = "~/images/" + fuPicture.FileName;

                    SqlDataSource1.Update();
                    lblMessage.Text = "Movie has been updated!";
                }
                else
                {
                    Response.Write("<script>alert('Invalid file type, only PNG and JPG are allowed.)</script>");
                }
            }
        }
    }
}