using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryPaySlip
{
    public partial class Payslip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblmsg.Text= string.Empty;
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(EmpIdbox.Text);
            string name= EmpNamebox.Text;
            double basic = Convert.ToDouble(EmpPaybox.Text);
            double TA = (double)(basic * 10) / 100;
            double DA = (double)(basic * 12) / 100;
            double HRA = (double)(basic * 15) / 100;
            double PF = (double)(basic * 10) / 100;
            double IT = (double)(basic * 5) / 100;

            double Gross = (double)( basic +TA + DA + HRA);
            double Net = (double) (Gross - (PF + IT));
            
            Lblmsg.Text = "NET :"+ Net + "<br> Gross :" + Gross;
        }

        protected void Clearbtn_Click(object sender, EventArgs e)
        {
            EmpIdbox.Text = string.Empty;
            EmpNamebox.Text = string.Empty;
            EmpPaybox.Text = string.Empty;
            Lblmsg.Text= string.Empty ;
        }
    }
}