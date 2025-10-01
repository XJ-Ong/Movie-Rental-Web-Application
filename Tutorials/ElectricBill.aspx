<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ElectricBill.aspx.cs" Inherits="WAPP2502.Tutorials.ElectricBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Electric Bill Page</h1>
    <h3>Enter your Electric Unit consumed:
        <asp:TextBox ID="txtEUnit" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEUnit" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEUnit" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEUnit" ErrorMessage="enter an integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    </h3>
    <h3>
        <asp:Button ID="btnCalc" runat="server" OnClick="btnCalc_Click" Text="Calculate Bill" />
    </h3>
    <h3>Bill =
        <asp:Label ID="lblBill" runat="server"></asp:Label>
    </h3>
</asp:Content>
