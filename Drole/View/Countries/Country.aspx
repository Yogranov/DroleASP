<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="Drole.View.Countries.Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  body {
    background-image: url("<%=backgroundImgUrl%>");
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
    background-size: cover;
  } 
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container country-main">
    <div class="row mt-5">
        <div class="col-sm-7">
            <div class="mb-5" data-aos="zoom-in">
                <h2 class="title float-right"><asp:Label ID="title" runat="server" /></h2>
                <h6>יוצר: <asp:Label ID="creator" runat="server" /></h6>
               <!-- @if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated) {
                    @Html.ActionLink("ערוך", "Edit", "Countries", new { id = Model.Country.Id}, new { @class = "btn btn-outline-danger btn-sm  ml-2"})
                    @Html.ActionLink("הוסף מקום מומלץ", "New", "VisitPlaces", new { countryId = Model.Country.Id }, new { @class = "btn btn-outline-primary btn-sm"})
                } -->
            </div>
            <div class="text-right" data-aos="flip-up">
                <h5>חוקים</h5>
                <ul>
                   <asp:Repeater ID="rulesRepeater" runat="server" >
                       <ItemTemplate>  
                           <li><i class="fas fa-plane"></i> <%# Eval("NAME") %> </li>
                       </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <div class="col-sm-5" data-aos="fade-down">
            <img class="country-img" runat="server" id="iconImage" src="#" alt="#"/>
        </div>
    </div>

          <asp:Repeater ID="visitPlacesRepeater" runat="Server">
            <HeaderTemplate>
                <div class="row mt-5 text-right"> 
                    <h3 data-aos="flip-left">מקומות מומלצים לצילום:</h3> 
            </HeaderTemplate>

            
            <ItemTemplate>
                <div class="row mt-5 flex-row-reverse" data-aos="zoom-in"> 
                    <div class="col-sm-7 col-md-8 col-lg-10">
                        <h4><%# Eval("NAME") %>
                           <!-- @if(System.Web.HttpContext.Current.User.Identity.IsAuthenticated) {
                                @Html.ActionLink("עריכה", "Edit", "VisitPlaces", new { Id = @visitPlace.Id }, new { @class = "btn btn-outline-danger btn-sm"})
                            } -->
                        </h4>
                
                        <p>
                            <%# Eval("CONTENT") %>
                        </p>
                    </div> 
                  <div class="col-sm-5 col-md-4 col-lg-2 pre-photo-box"> 
                    <img class="pre-photo" src="<%# Eval("IMGURL") %>"/> 
                  </div> 
                </div>
            </ItemTemplate>
            
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>
      
    </div>
  
    

  <script>
    $( document ).ready(function() {
      $("nav").addClass("country-page");
    });
  </script>
</asp:Content>
