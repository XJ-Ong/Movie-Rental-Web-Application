<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ex_01.aspx.cs" Inherits="WAPP2502.Ex_01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>design the form, that will accept the name of a user</h2>
    <h3>put a button, using the label - &quot;Welcome to WAPP, [name]&quot;</h3>
    <p>
        1. Design</p>
    <p>
        2. Set properties</p>
    <p>
        3. Write the code</p>
    <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnName" runat="server" OnClick="btnName_Click" Text="Enter Name" />
    </p>
    <p>
        <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>
