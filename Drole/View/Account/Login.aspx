<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Drole.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
    <div class="row">
        <div class="mx-auto col-sm-10 col-lg-6" data-aos="zoom-in">
            <div class="card">
                <div class="card-header">
                    <h4 class="mb-0 text-center">כניסה לאתר</h4>
                </div>
                <div class="card-body text-right">
                    <section id="loginForm">
                        <form runat="server" role="form" class="form-horizontal" id="LoginForm">
                            
                            <div class="form-group row">
                                <label for="MainContent_loginEmail" class="col-sm-3 col-form-label form-control-label">דוא"ל</label>
                                <asp:TextBox runat="server" ID="loginEmail" placeholder="xxx@xxx.xxx" cssClass="form-control" />

                                <div class="col-sm-9 col-12">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="MainContent_loginPassword" class="col-sm-3 col-form-label form-control-label">סיסמה</label>
                                       <asp:TextBox TextMode="Password" runat="server" id="loginPassword" placeholder="*******" cssClass="form-control" />
                                <div class="col-sm-9 col-12">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-check col-sm-9 mt-2 mb-4">
                                    <asp:CheckBox ID="loginRemmeberMe"  runat="server"/>
                                    <label for="MainContent_loginRemmeberMe">זכור אותי</label>
                                </div>
                            </div>
                            

                            <div class="form-group row">
                                <div class="col-12">
                                    <asp:Button id="loginSubmit" cssClass="btn btn-primary btn-block" runat="server" Text="התחבר" OnClick="BtnReg_Click" />
                                </div>
                            </div>

                            <hr />
                            <div class="row">
                                <div class="col-12 text-center">
                                    <h6><a href="Register.aspx" >עוד לא רשום? לחץ להרשמה</a></h6>
                                </div>
                            </div>

                        </form>

                    </section>
                </div>
            </div>
        </div>
    </div>
</div>



</asp:Content>
