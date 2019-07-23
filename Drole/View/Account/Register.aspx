<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Drole.View.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">

    <div class="row">
        <div class="col-sm-5 col-md-4 col-lg-3 col-xs-12 text-center" data-aos="zoom-in">
            <h2 class="page-title"><asp:Label ID="title" runat="server" /></h2>
        </div>
    </div>

    <div class="row">
        <div class="mx-auto col-sm-10 col-lg-6" data-aos="zoom-in">
            <div class="card">
                <div class="card-header">
                    <h4 class="mb-0 text-center">מידע על המשתמש</h4>
                </div>
                <div class="card-body text-right">

                    <form role="form" class="form-horizontal" id="registerForm" autocomplete="off" runat="server">

                        <div class="form-group row">
                            <label for="MainContent_registerFirstName" class="col-sm-3 col-form-label form-control-label">שם פרטי</label>
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" ID="registerFirstName" placeholder="ישראל" cssClass="form-control" />
                            </div>
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-9">
                                <div class="alert alert-danger" id="register-error-firstName"></div>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="MainContent_registerLastName" class="col-sm-3 col-form-label form-control-label">שם משפחה</label>
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" id="registerLastName" placeholder="ישראלי" cssClass="form-control" />
                            </div>
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-9">
                                <div class="alert alert-danger" id="register-error-lastName"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="MainContent_registerEmail" class="col-sm-3 col-form-label form-control-label">דואר אלקטרוני</label>
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" id="registerEmail" placeholder="xxx@xxx.xxx" cssClass="form-control" />
                            </div>
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-9">
                                <div class="alert alert-danger" id="register-error-email"></div>
                            </div>
                        </div>

                         <div class="form-group row">
                            <label for="MainContent_registerPassword" class="col-sm-3 col-form-label form-control-label">סיסמה</label>
                            <div class="col-sm-9">
                                <asp:TextBox TextMode="Password" runat="server" id="registerPassword" placeholder="*******" cssClass="form-control" />
                            </div>
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-9">
                                <div class="alert alert-danger" id="register-error-password"></div>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="MainContent_registerPasswordConfirm" class="col-sm-3 col-form-label form-control-label">שוב סיסמה</label>
                            <div class="col-sm-9">
                                 <asp:TextBox TextMode="Password" runat="server" id="registerPasswordConfirm" placeholder="*******" cssClass="form-control" />
                            </div>
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-9">
                                <div class="alert alert-danger" id="register-error-passwordConfirm"></div>
                            </div>
                        </div>

                        <div class="form-check col-sm-12 text-center mt-2 mb-4">
                            <asp:CheckBox ID="registerTermsOfUse"  runat="server"/>
                            <label for="MainContent_registerTermsOfUse" class="form-check-label">אני מאשר את <a href="/View/Home/TermsOfUse.aspx" target="_blank">תנאי השימוש</a></label>        
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label form-control-label"></label>
                            <div class="col-sm-9">
                                <asp:Button id="registerSubmit" cssClass="btn btn-primary" runat="server" Text="שלח טופס" OnClick="BtnReg_Click" />
                                <input type="reset" class="btn btn-secondary mr-2" id="register-reset" value="איפוס" />
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $(function () {
        var mainContent = "#MainContent_";

            $("#register-error-firstName").hide();
            $("#register-error-lastName").hide();
            $("#register-error-email").hide();
            $("#register-error-password").hide();
            $("#register-error-passwordConfirm").hide();

            var error_firstName = false;
            var error_lastName = false;
            var error_email = false;
            var error_password = false;
            var error_passwordConfirm = false;

            $(mainContent + "registerFirstName").focusout(function () {
                var firstName_length = $(mainContent + "registerFirstName").val().length;
                if (firstName_length < 2) {
                    $("#register-error-firstName").html("חייב להכיל לפחות שני תווים");
                    $("#register-error-firstName").show();
                    error_firstName = false;
                } else {
                    $("#register-error-firstName").hide();
                    error_firstName = true;
                }
            });

            $(mainContent + "registerLastName").focusout(function () {
                var firstName_length = $(mainContent + "registerLastName").val().length;
                if (firstName_length < 2) {
                    $("#register-error-lastName").html("חייב להכיל לפחות שני תווים");
                    $("#register-error-lastName").show();
                    error_lastName = false;
                } else {
                    $("#register-error-lastName").hide();
                    error_lastName = true;
                }
            });

            $(mainContent + "registerPassword").focusout(function () {
                var firstName_length = $(mainContent + "registerPassword").val().length;
                if (firstName_length < 8) {
                    $("#register-error-password").html("חייב להכיל לפחות שמנה תווים");
                    $("#register-error-password").show();
                    error_password = false;
                } else {
                    $("#register-error-password").hide();
                    error_password = true;
                }
            });

            $(mainContent + "registerPasswordConfirm").focusout(function () {
                if ($(mainContent + "registerPassword").val() != $(mainContent + "registerPasswordConfirm").val()) {
                    $("#register-error-passwordConfirm").html("הסיסמאות לא תואמות");
                    $("#register-error-passwordConfirm").show();
                    error_passwordConfirm = false;
                } else {
                    $("#register-error-passwordConfirm").hide();
                    error_passwordConfirm = true;
                }
            });

            $(mainContent + "registerEmail").focusout(function () {
                var emailReg = new RegExp(/^[A-Z0-9._%+-]+@+[A-Z0-9.-]+\.[A-Z]{2,4}$/i);
                if (emailReg.test($(mainContent + "registerEmail").val())) {
                    $("#register-error-email").hide();
                    error_email = true;
                } else {
                    $("#register-error-email").html("חייב להכיל כתובת חוקית");
                    $("#register-error-email").show();
                    error_email = false;
                }

            });

            $("#register-reset").click(function () {

                $("#register-error-firstName").hide();
                $("#register-error-lastName").hide();
                $("#register-error-email").hide();
                $("#register-error-password").hide();
                $("#register-error-passwordConfirm").hide();

                error_firstName = false;
                error_lastName = false;
                error_email = false;
                error_password = false;
                error_passwordConfirm = false;
            });

            $("#registerForm").submit(function () {
                if (error_firstName == true && error_lastName == true && error_email == true && error_password == true && error_passwordConfirm == true) {
                    return true;
                } else {
                    return false;
                }
            });

        });
    </script>


</asp:Content>
