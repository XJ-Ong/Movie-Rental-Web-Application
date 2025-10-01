using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class TaxiFare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double d = Convert.ToDouble(txtDistance.Text);
            double fare = 3;
            if (d > 5)
            {
                fare += 1 * (d - 5);
                d = 5;
            }
            if(d > 0)
            {
                fare += 1.5 * d;
            }
            lblFare.Text = fare.ToString("F2");
        }
    }
}