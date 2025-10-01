using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502
{
    public partial class Ex_03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            lblOutput.Text = Int32.Parse(txtValue1.Text) + Int32.Parse(txtValue2.Text) + "";
        }
    }
}