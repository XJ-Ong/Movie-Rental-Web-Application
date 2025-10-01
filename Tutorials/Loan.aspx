<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loan.aspx.cs" Inherits="WAPP2502.Tutorials.Loan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Loan Interest Calculator</h1>
    <h3>Loan Amount (Principle):
        <asp:TextBox ID="txtPrinciple" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrinciple" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrinciple" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </h3>
    <h3>Annual Interest Rate (%):<asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </h3>
    <h3>Loan Term (years):<asp:TextBox ID="txtTerm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTerm" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtTerm" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTerm" ErrorMessage="enter an integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    </h3>
    <h3>
        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" />
    </h3>
    <h3>Monthly Payment =
        <asp:Label ID="lblMonthly" runat="server"></asp:Label>
    </h3>
    <h3>Total Repayment =
        <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </h3>
</asp:Content>
