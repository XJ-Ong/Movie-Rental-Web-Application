<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grocery.aspx.cs" Inherits="WAPP2502.Tutorials.Grocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Grocery Store Total</h1>
    <h3>Amount of Apple (RM 2.00 each):
        <asp:TextBox ID="txtApple" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApple" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtApple" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtApple" ErrorMessage="enter an integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    </h3>
    <h3>Amount of Orange (RM 1.50 each):<asp:TextBox ID="txtOrange" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOrange" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtOrange" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtOrange" ErrorMessage="enter an integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    </h3>
    <h3>
        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" />
    </h3>
    <h3>Total Cost = <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </h3>
</asp:Content>
