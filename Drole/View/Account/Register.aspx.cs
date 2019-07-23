using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Drole.Models;

namespace Drole.View.Account
{
    public partial class Register : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            var pageTitle = "הרשמה";

            title.Text = pageTitle;
        }

        protected void BtnReg_Click(object sender, EventArgs e) {
            var dbList = new List<DbListAdapter>();

            dbList.Add(new DbListAdapter("FirstName", registerFirstName.Text));
            dbList.Add(new DbListAdapter("LastName", registerLastName.Text));
            dbList.Add(new DbListAdapter("Email", registerEmail.Text));
            dbList.Add(new DbListAdapter("Password", registerPassword.Text));

            new MyDB().Insert("Users", dbList);

        }
    }
}