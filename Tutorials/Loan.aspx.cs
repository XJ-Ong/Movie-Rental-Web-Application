using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class Loan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double principle = Convert.ToDouble(txtPrinciple.Text);
            double rates = Convert.ToDouble(txtRate.Text);
            int term = Convert.ToInt32(txtTerm.Text);

            double r = rates / (12 * 100);
            int n = term * 12;
            double M = (principle * r) / (1 - Math.Pow(1 + r, -n));
            double total = M * n;
            lblMonthly.Text = "RM" + M.ToString("F2");
            lblTotal.Text = "RM" + total.ToString("F2");
        }
    }
}