<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WAPP2502.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login Page</h1>
<h2>Username:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</h2>
<h2>Password:
    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
</h2>
<h3>
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
</h3>
</asp:Content>
