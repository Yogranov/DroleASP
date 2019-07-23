<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Drole.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">

    <div class="row">
        <div class="col-sm-5 col-md-4 col-lg-3 col-xs-12 text-center" data-aos="zoom-in">
            <h2 class="page-title"><asp:Label ID="title" runat="server" /></h2>
        </div>
    </div>

    <div class="row text-right justify-content-center mt-5">
        <div class="col-sm-12" data-aos="zoom-in-down">
            <div class="form-sec">
                <form method="post" id="contactUsForm" class="contact-form" runat="server">
                    <ul>
                        <li>
                            <i class="fa fa-user form-icon"></i>
                            <asp:TextBox runat="server" ID="contactUsName" placeholder="שם"/>
                        </li>
                        <li class="alert alert-danger" id="contactUsName-error">
                            חובה להזין שם
                        </li>
                        <li>
                            <i class="fa fa-at form-icon"></i>
                            <asp:TextBox runat="server" ID="contactUsEmail" placeholder="דואר אלקטרוני"/>
                        </li>
                        <li class="alert alert-danger" id="contactUsEmail-error">
                            חובה להזין שם
                        </li>
                        <li>
                            <i class="fa fa-phone form-icon"></i>
                            <asp:TextBox runat="server" ID="contactUsPhone" placeholder="מספר פלאפון"/>
                        </li>
                        <li class="alert alert-danger" id="contactUsPhone-error">
                            חובה להזין שם
                        </li>
                        <li>
                            <i class="fa fa-paper-plane form-icon"></i>
                            <asp:TextBox runat="server" ID="contactUsSubject" placeholder="נושא הפנייה"/>
                        </li>
                        <li class="alert alert-danger" id="contactUsSubject-error">
                            חובה להזין שם
                        </li>
                        <li>
                            <i class="fa fa-envelope form-icon"></i>
                            <textarea placeholder="תוכן הפניה..." rows="2" id="contactUsContent" runat="server"></textarea>
                        </li>
                        <li class="alert alert-danger" id="contactUsContent-error">
                            חובה להזין שם
                        </li>
                        <li style="border: none">
                            <asp:Button id="contactUsSubmit" cssClass="btn btn-primary ml-2" runat="server" Text="שלח" OnClick="BtnReg_Click" />
                            <input type="reset" class="mr-2" id="contact-us-reset" value="איפוס">
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>

    <script>
      $(function() {
        $("#contactUsName-error").hide();
        $("#contactUsEmail-error").hide();
        $("#contactUsPhone-error").hide();
        $("#contactUsSubject-error").hide();
        $("#contactUsContent-error").hide();

        var error_name = false;
        var error_email = false;
        var error_phone = false;
        var error_subject = false;
        var error_content = false;

          var prefix = "#MainContent_";

        $(prefix + "contactUsName").focusout(function() {
              var name_length = $(prefix + "contactUsName").val().length;
              if(name_length < 2) {
                  $("#contactUsName-error").html("חייב להכיל לפחות שני תווים");
                    $("#contactUsName-error").show();
                    error_name = false;
              } else {
                  $("#contactUsName-error").hide();
                  error_name = true;
              }
          });

          $(prefix + "contactUsEmail").focusout(function() {
              var emailReg = new RegExp(/^[A-Z0-9._%+-]+@@[A-Z0-9.-]+\.[A-Z]{2,4}$/i);

              if(emailReg.test($(prefix + "contactUsEmail").val())) {
                  $("#contactUsEmail-error").hide();
                  error_email = true;
              } else {
                $("#contactUsEmail-error").html("חייב להכיל כתובת חוקית");
                $("#contactUsEmail-error").show();
                error_email = false;
              }
            });

            $(prefix + "contactUsPhone").focusout(function() {
                  var phone_length = $(prefix + "contactUsPhone").val().length;
                  if(phone_length != 10) {
                      $("#contactUsPhone-error").html("חייב להכיל 10 מספרים");
                        $("#contactUsPhone-error").show();
                        error_phone = false;
                  } else {
                      $("#contactUsPhone-error").hide();
                      error_phone = true;
                  }
              });

              $(prefix + "contactUsSubject").focusout(function() {
                    var subject_length = $(prefix + "contactUsSubject").val().length;
                    if(subject_length < 4) {
                        $("#contactUsSubject-error").html("חייב להכיל לפחות 4 תווים");
                          $("#contactUsSubject-error").show();
                          error_subject = false;
                    } else {
                        $("#contactUsSubject-error").hide();
                        error_subject = true;
                    }
                });

                $(prefix + "contactUsContent").focusout(function() {
                      var content_length = $(prefix + "contactUsContent").val().length;
                      if(content_length < 5 || content_length > 150) {
                          $("#contactUsContent-error").html("חייב להכיל בין 5-150 תווים");
                            $("#contactUsContent-error").show();
                            error_content = false;
                      } else {
                          $("#contactUsContent-error").hide();
                          error_content = true;
                      }
                  });


                  $("#contact-us-reset").click(function() {

                    $("#contactUsName-error").hide();
                    $("#contactUsEmail-error").hide();
                    $("#contactUsPhone-error").hide();
                    $("#contactUsSubject-error").hide();
                    $("#contactUsContent-error").hide();

                    var error_name = false;
                    var error_email = false;
                    var error_phone = false;
                    var error_subject = false;
                    var error_content = false;
                  });

                  $("#contactUsForm").submit(function() {
                    if(error_name == true && error_email == true && error_phone == true && error_subject == true && error_content == true) {
                      return true;
                    } else {
                      return false;
                    }
                  });

      });
    </script>

</asp:Content>
