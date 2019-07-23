using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Drole.View.Account
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load( object sender, EventArgs e ) {
            Session["userId"] = null;
            Session["userFirstName"] = null;
            Session["userLastName"] = null;
            Session["userEmail"] = null;

            Response.Redirect ("/Default.aspx");
        }
    }
}