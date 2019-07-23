using Drole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Drole
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            if(Session["userId"] != null) {
                Response.Redirect ("/Default.aspx");
            } 
        }

        protected void BtnReg_Click(object sender, EventArgs e) {

            var dataFromUser = new MyDB().Where ("Email", loginEmail.Text).Where ("Password", loginPassword.Text).Get ("Users");

            if(dataFromUser.Rows.Count != 0) {
                var dataRow = dataFromUser.Rows[0];
                Session["userId"] = (int)dataRow["Id"];
                Session["userFirstName"] = dataRow["FirstName"];
                Session["userLastName"] = dataRow["LastName"];
                Session["userEmail"] = dataRow["Email"];
            }
        }
    }
}