using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class Ex_01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            lblWelcome.Text = "Welcome to WAPP, " + txtName.Text;
        }
    }
}