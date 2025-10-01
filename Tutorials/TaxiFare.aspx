<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaxiFare.aspx.cs" Inherits="WAPP2502.Tutorials.TaxiFare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Taxi Fare Calculator</h1>
    <h3>Trip Distance (in km):
        <asp:TextBox ID="txtDistance" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDistance" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDistance" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </h3>
    <h3>
        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate Taxi Fare" />
    </h3>
    <h3>Total Fare: <asp:Label ID="lblFare" runat="server"></asp:Label>
    </h3>
</asp:Content>
