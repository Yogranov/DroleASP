using Drole.Models;
using System;

namespace Drole
{
    public partial class MainLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["userId"] != null) {

                NavHello.Text = @"
                    <div class='row mr-5'>
                        <div class='col-5'>
                            <a href='/View/Account/Logout.aspx' class='btn btn-danger btn-sm mr-2' type='submit'>יציאה</a>
                        </div>
                        <div class='col-7'>שלום, " + Session["userFirstName"] +"</div>" +
                    "</div>";


            }
            else {
                NavHello.Text = "<a class='nav-link mt-2 font-weight-bold' href='/View/Account/Login.aspx'>התחבר</a>";
            }
        }
    }
}