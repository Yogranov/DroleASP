using System;
using System.Collections.Generic;
using System.Linq;
using Drole.Models;

namespace Drole.View.Countries
{
    public partial class Country : System.Web.UI.Page {

        public string backgroundImgUrl = "";

        protected void Page_Load(object sender, EventArgs e) {
            
            var user = new User(1, "יוגב", "אגרנוב", "frizen700@gmail.com");

            var country = new Models.Country(1, "ישראל", user, "Israel", "חוק מספר1:חוק מספר 2:חוק מספר 3");

            var visitPlaces = new List<VisitPlace>() {
                new VisitPlace(1, "עין מוקש","/Content/Uploads/Israel/ein-mokesh.jpg","בסמוך לשרידי הכפר הצרקסי הנטוש עין זיוואן, נמצא מעיין שמימיו נובעים אל תוך בריכה מלאכותית יפה\r\n                 ומרשימה בקוטר של כעשרה מטרים. הבריכה העגולה בנויה סביב אבני בזלת, וגרם מדרגות עקלתוני\r\n                 מאפשר לעלות ולרדת אליה. מי הבריכה עמוקים מאוד והם קרירים ונעימים לשחייה."),
                new VisitPlace(2, "עין שוקק", "/Content/Uploads/Israel/ein-shokek.jpg", "מימיו של עין שוקק, שנמצא בתחומיו של עמק המעיינות, מזינים בריכה עגולה ורחבת ידיים בעומק של כ-1.5 מטר, שמלאה במהלך כל השנה ומזמינה לטבילה בימי קיץ חמים.\r\n                  את הבריכה מקיפה צמחיית מים טיפוסית, שצובעת את כל סביבתה בירוק: פטל קדוש, גומא וקנה. מהבריכה זורמים מי המעיין בנחל שוקק, שנשפך בסופו אל תוך נחל הקיבוצים."),
                
                new VisitPlace(3, "ריף הדולפינים", "/Content/Uploads/Israel/dolphin_reef_in_eilat.jpg","ריף הדולפינים הוא אתר תיירות שהוקם לחופה הדרומי של אילת, סביב שונית בצורת פרסה, ומעניק חוויית שחייה וצלילה עם דולפינים, וכן גם עם שאר בעלי החיים בריף. שטחו של הריף כ-10 קמ\"ר ותחום ברשתות צפות, ועומקו הממוצע הוא 12 מטרים. מיני בעלי חיים רבים מצויים באזור, בניהם; פרפרוניים, קיסריים ודיונונאים.")
            };


            var pageTitle = country.name;
            var pageCreator = country.creator.firstName;
            var imgUrl = country.iconImgUrl;
            var rules = country.rules;
            backgroundImgUrl = country.backgroundImgUrl;
            

            creator.Text = pageCreator;
            title.Text = pageTitle;
            iconImage.Src = imgUrl;
            iconImage.Alt = pageTitle;

            rulesRepeater.DataSource = from c in rules select new { NAME = c };
            rulesRepeater.DataBind();

            if (visitPlaces.Count > 0) {
                visitPlacesRepeater.DataSource = from c in visitPlaces
                    select new {
                        ID = c.id,
                        NAME = c.name,
                        IMGURL = c.imgUrl,
                        CONTENT = c.content
                    };

                visitPlacesRepeater.DataBind();
            }

        }
    }
}