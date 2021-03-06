<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Drole.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
    body {
        background-image: url("/Content/Images/Home/world-map-shadow.png");
        background-repeat: no-repeat;
        background-position: center center;
        background-attachment: fixed;
        background-size: cover;
    }
    
    .bg-light {
        background-color: transparent !important;
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    

<div class="container search-box" dir="ltr">
    <div class="row">
        <div class="col-md-6 offset-md-3" data-aos="zoom-in">

            <form dir="ltr">
                <div class="input-group mb-3 ui-widget">
                    <div class="input-group-prepend">
                        <button class="btn btn-outline-secondary pl-4" type="button"><i class="fas fa-arrow-circle-down fa-lg mr-3"></i></button>
                    </div>
                    <input dir="rtl" type="text" id="countrySearch" class="form-control" placeholder="חיפוש מדינה"/>
                </div>
            </form>

        </div>
    </div>

</div>

<div class="login-container">
    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>

<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul>
<div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div>

    <script>
    /*$(document).ready(function() {
        $("#countrySearch").autocomplete({
            source: function(request, response ) {
                $.ajax( {
                    type: "GET",
                    url: "/Api/Countries",
                    dataType: "json",
                    data: {
                        term: request.term
                    },
                    success: function( data ) {
                        response(data);
                        console.log(ui.item.label);
                    }
                } );
            },
            minLength: 2,
            select: function( event, ui ) {
                event.preventDefault();
                $("#countrySearch").val(ui.item.label);
                window.location = "/Countries/Country/" + ui.item.value;
            }
        } );

    });
    </script>

</asp:Content>
