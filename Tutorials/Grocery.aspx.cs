using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class Grocery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int apple = Convert.ToInt32(txtApple.Text);
            int orange = Convert.ToInt32(txtOrange.Text);
            double total = 2 * apple + 1.5 * orange;
            lblTotal.Text = "RM" + total.ToString("F2");
        }
    }
}