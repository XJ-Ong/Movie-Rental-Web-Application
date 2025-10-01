<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ex_03.aspx.cs" Inherits="WAPP2502.Ex_03" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Simple Computation</p>
    <p>
        First Value:<asp:TextBox ID="txtValue1" runat="server"></asp:TextBox>
    </p>
    <p>
        Second Value:
        <asp:TextBox ID="txtValue2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnCompute" runat="server" OnClick="btnCompute_Click" Text="Compute" />
    </p>
    <p>
        Total:
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
</asp:Content>
