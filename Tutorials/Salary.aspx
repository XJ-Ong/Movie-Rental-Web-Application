<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salary.aspx.cs" Inherits="WAPP2502.Tutorials.Salary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Salary Calculator</h1>
    <h3>Hours worked:
        <asp:TextBox ID="txtHour" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHour" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtHour" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </h3>
    <h3>Hourly rate (RM):<asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="Int32.MaxValue" MinimumValue="0"></asp:RangeValidator>
    </h3>
    <h3>
        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" />
    </h3>
    <h3>Total Salary =
        <asp:Label ID="lblSalary" runat="server"></asp:Label>
    </h3>
    <h3>&nbsp;</h3>
</asp:Content>
