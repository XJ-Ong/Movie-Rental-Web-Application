<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WAPP2502.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Admin Dashboard</h1>
    <p>
        Manage Customers</p>
    <p>
        <a href="manageMovie.aspx">Manage Movies</a></p>
    <p>
        Manage Rentals</p>
    <p>
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
    </p>
</asp:Content>
