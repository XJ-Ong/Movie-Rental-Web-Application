<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WAPP2502._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h2 id="aspnetTitle" style="color: #000066">Welcome to ASP.NET in WAPP</h2>
            <h1 style="color: #000066">
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
            </h1>
            <h2 style="color: #000066">
                <asp:Button ID="btnClickMe" runat="server" OnClick="Button1_Click" Text="ClickMe" />
                <asp:Label ID="lblDatetime" runat="server" Text="Label"></asp:Label>
            </h2>
            <p>
                <a href="Ex_01.aspx">Exercise 1</a></p>
            <p>
                <a href="Ex_02.aspx">Exercise 2</a></p>
            <p>
                <a href="Ex_03.aspx">Exercise 3</a></p>
            <p>
                <a href="ManageProfile.aspx">ManageProfile.aspx</a></p>
            <p>
                &nbsp;</p>
            <h1>
                &nbsp;<asp:LinkButton ID="lbtnMP" runat="server" OnClick="lbtnMP_Click">Manage Profile</asp:LinkButton>
                <asp:LinkButton ID="lbtnLogout" runat="server" OnClick="lbtnLogout_Click">Logout</asp:LinkButton>
            </h1>
            <h1>
                <asp:LinkButton ID="lbtnLogin" runat="server" PostBackUrl="~/LoginPage.aspx">Login</asp:LinkButton>
                <asp:LinkButton ID="lbtnReg" runat="server" PostBackUrl="~/CustomerRegistration.aspx">Register</asp:LinkButton>
            </h1>
        </section>
    </main>

</asp:Content>
