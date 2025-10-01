<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayResult.aspx.cs" Inherits="WAPP2502.displayResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Your Profile</h3>
    <asp:Label ID="lblFirstName0" runat="server" Text="First Name:"></asp:Label>
    <asp:Label ID="lblFName" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblLastName0" runat="server" Text="Last Name:"></asp:Label>
    <asp:Label ID="lblLName" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblEmail1" runat="server" Text="Email:"></asp:Label>
    <asp:Label ID="lblEmailDisplay" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblEmail2" runat="server" Text="Gender:"></asp:Label>
    <asp:Label ID="lblGenderDisplay" runat="server"></asp:Label>
    <br />Favourite Programming Language: 
    <asp:Label ID="lblFavLang" runat="server"></asp:Label>
</asp:Content>
