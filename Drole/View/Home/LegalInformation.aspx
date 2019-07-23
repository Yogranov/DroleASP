<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="LegalInformation.aspx.cs" Inherits="Drole.LegalInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-5">

    <div class="row" >
        <div class="col-sm-6 col-md-5 col-lg-4 col-xs-12 text-center" data-aos="zoom-in">
            <h2 class="page-title"><asp:Label ID="title" runat="server" /></h2>
        </div>
    </div>

    <div class="row text-right justify-content-center mt-5"  data-aos="zoom-in-up">
        <div class="col-sm-10 offset-sm col-xs-12">
            <h3 class="mr-3">תוכן האתר</h3>
            <p>
                רשאי להשתמש ולרכוש כל מי שמלאו לו 18 שנים וכשיר לבצע פעולות משפטיות מחייבות, תוך הבנה מלאה כי האתר הינו אתר חברתי הבנוי על תוכן אשר משתמשים פרטיים מעלים.
                הנהלת האתר אינה אחראית לתוכן  שעולה ואין לראות בתוכן האתר כמידע אמין. על מנת לקבל את המידע החוקי הנכון לאותה מדינה - יש להכנס לאתר הממשלתי הרשמי של אותה מדינה ולמצוא שם את חוקי ההטסה.
                האתר שלנו מבוסס על מידע גולשים בלבד.
            </p>
        </div>
    </div>

    <div class="row text-right justify-content-center mt-5" data-aos="zoom-in-down">
        <div class="col-sm-10 offset-sm">
            <h3 class="mr-3">העלאת תוכן</h3>
            <p>
                'משתמש רשום' הינו אדם אשר נרשם לאתר וקרא את תנאי השימוש במעמד ההרשמה לאתר ובכך סימן שהבין כי האחריות על התוכן הינה על אחריותו הבלעדתית.
                הנהלת האתר לא תיקח אחריות במקרה של הטעית המשתמשים עם מידע שגוי, בדגש על מצב של עבירה על החוק על ידי אחד המשתמשים בתוכן האתר.
                יש להעלות את התוכן לאחר בדיקה מעמיקה בחוקיה הרשמיים של אותה מדינה על סמך אתר ממשלתי של המדינה.
            </p>
        </div>
    </div>

</div>

</asp:Content>
