using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP2502.Tutorials
{
    public partial class Grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int mark = Convert.ToInt32(txtMark.Text);
            string grade = "";
            if(mark >= 90)
            {
                grade = "A";
            }
            else if(mark >= 80)
            {
                grade = "B";
            }
            else if(mark >= 70)
            {
                grade = "C";
            }
            else
            {
                grade = "FAIL";
            }
            lblGrade.Text = grade;
        }
    }
}