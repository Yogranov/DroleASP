using System;
using Drole.Models;



namespace Drole.View {
    public partial class Test : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            var data = new MyDB().Where("Id", "1").Where("FirstName", "yog").OrWhere("Email", "asd@gmail.com").Limit(2).Sort("DESC", "FirstName", "LastName").Get("Users","FirstName","LastName");

            RptData.DataSource = data;
            RptData.DataBind ();


            
        }
    }
}