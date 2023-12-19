using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class Izvestaj : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
            {
                lblIzv.Text = PreviousPage.ImePrezime + " (" + PreviousPage.Email + ")," + " rođen " + PreviousPage.Godine + ". godine, " +
                    "učenik " + PreviousPage.Razred + ". razreda, uspešno je popunio obrazac za prijavu...";
            }

        }
        protected void btn_back(object sender, EventArgs e)
        {
            Response.Redirect("~/Prijava.aspx");
        }
    }
}
