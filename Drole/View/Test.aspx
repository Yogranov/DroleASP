<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Drole.View.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="RptData" runat="server" >
        <ItemTemplate>
            <h2><%# Eval("FirstName") %></h2>
            <h2><%# Eval("LastName") %></h2>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
