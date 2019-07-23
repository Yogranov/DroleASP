using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Drole
{
    public partial class LegalInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            var pageTitle = "מידע משפטי";

            title.Text = pageTitle;
        }
    }
}