using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class Salary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double hours = Convert.ToDouble(txtHour.Text);
            double rates = Convert.ToDouble(txtRate.Text);
            double salary = 0;
            if (hours <= 40)
            {
                salary = hours * rates;
            }
            else
            {
                salary = 40 * rates + (hours - 40) * 1.5 * rates;
            }

            lblSalary.Text = "RM" + salary.ToString("F2");
        }
    }
}