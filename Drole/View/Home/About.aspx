<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Drole.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">

      <div class="row">
        <div class="col-sm-5 col-md-4 col-lg-3 col-xs-12 text-center" data-aos="zoom-in">
          <h2 class="page-title"><asp:Label ID="title" runat="server" /></h2>
        </div>
      </div>

      <div class="row text-right justify-content-center mt-5" data-aos="zoom-in-up">
        <div class="col-sm-10 offset-sm">
            <h3 class="mr-3">עלינו</h3>
            <p>
              חברת דרול (Drole = Drone Rule) נוסדה בשנת 2018 על ידי חובבי הטסת רחפנים - תחילה בגבולות המדינה ולאחר מכן גם מחוץ לגבולות המדינה.
              מיד שמנו לב לשוני הגדול בין מדינות בכל הקשור לחוקי הטסת רחפנים. במדינה אחת כמעט והחוק אינו מתיחס לנושא, אך במדינה אחרת יש איסור חמור על הכנסת כלל הרחפנים.
              חיפשנו מידע באינטרנט וגילנו שישנה כמות ענקית של מטיסי רחפנים אשר מסתובבים בעולם ללא ידיעת החוק, מה שיכול להכניס אותם להמון בעיות, גם אם הם לא מודעים לחוק.
              אחרי שנחשפנו להמון שאלות ולצורך של האנשים לריכוז המידע במקום אחד מאורגן, החלטנו לפתוח את Drole - האתר הראשון שבו כל משתמש שטס, קרא ויישם את החוקים במדינה כלשהי, מגיע אלינו וכותב את החוקים בצורה הנכונה והמדויק ביותר.
              בלי אותיות קטנות ובלי שפות זרות - השקעת לפני הטיול להבין את כל חוקי המדינה? בואו שתף אותנו!
            </p>
        </div>
      </div>

      <div class="row text-right justify-content-center mt-5" data-aos="zoom-in-down">
        <div class="col-sm-10 offset-sm">
            <h3 class="mr-3">החזון</h3>
            <p>
              אנו רואים את האתר כקהילת שיתוף מידע (חוכמת ההמונים), אנו רואים את האתר מתמלא ומתעדכן כל הזמן במידע חדש ואמין. המידע יתעדכן על ידי המשתמשים כל הזמן. במידה וחוק מסוים עבר שינוי - האדם הבא שיגיע ליעד יעדכן את כולם.
              ובסוף? שכולם יטוסו, יהנו, יצלמו מקומות יפים... והכי חשוב, שישמרו על החוקים ועל עצמם.
            </p>
        </div>
      </div>

      <div class="row text-right justify-content-center mt-5" data-aos="zoom-in-down">
        <div class="col-sm-10 offset-sm">
            <h3 class="mr-3">ומה עם בונוס קטן?</h3>
            <p>
              צודקים! בשביל לעשות את העסק יותר מעניין, אנו נותנים במה בכל עמוד חוקי המדינה מסוימת להכניס מקומות מומלצים לצילום. ככה נדע לתכנן את הטיול שלנו למקומות הכי יפים עבור צילומי רחפן.            </p>
        </div>
      </div>

    </div>

</asp:Content>
