using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class Prijava : System.Web.UI.Page
    {
        public string ImePrezime
        {
            get { return txtImePrezime.Text; }
        }
        public string Email
        {
            get { return txtEmail.Text; }
        }
        public string Godine
        {
            get { return txtRodjenje.Text; }
        }
        public string Razred
        {
            get { return RdbtnRazred.Text; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClick (object sender, EventArgs e)
        {
            if(ImeValidator.IsValid  && EmailValidator.IsValid && EmailEXPValidator.IsValid &&
                EmailPotvrdaValidator.IsValid && EmailCOMPValidator.IsValid && GodineValidator.IsValid
                && GodineRangeValidator.IsValid && RadioValidator.IsValid)
            {
                lblPoruka.Text = string.Empty;
                btn.PostBackUrl = "~/Izvestaj.aspx";

            }
            else
            {
                lblPoruka.Text = "Upitnik nije ispravno popunjen.";
            }
        }
    }
}