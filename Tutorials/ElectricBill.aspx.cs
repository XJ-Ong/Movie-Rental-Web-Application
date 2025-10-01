using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class ElectricBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            string input = txtEUnit.Text;
            double unit = Convert.ToDouble(input);
            double bill = 0;
            if (unit > 200)
            {
                bill += 1.2 * (unit - 200);
                unit = 200;
            }
            if(unit > 100)
            {
                bill += 0.75 * (unit - 100);
                unit = 100;
            }
            if(unit > 0)
            {
                bill += 0.5 * (unit);
            }
            else
            {
                bill = 0;
            }

            string billamount = "RM" + Convert.ToString(bill);
            lblBill.Text = billamount;
        }
    }
}