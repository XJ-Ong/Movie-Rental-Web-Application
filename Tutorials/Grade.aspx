<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grade.aspx.cs" Inherits="WAPP2502.Tutorials.Grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Grade Calculator</h1>
    <h3>Mark (0-100):
        <asp:TextBox ID="txtMark" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMark" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtMark" ErrorMessage="Invalid number" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMark" ErrorMessage="enter an integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    </h3>
    <h3>
        <asp:Button ID="btnEvaluate" runat="server" OnClick="btnCalculate_Click" Text="Evaluate" Width="200px" />
    </h3>
    <h3>Total Fare: <asp:Label ID="lblGrade" runat="server"></asp:Label>
    </h3>
    <h3></h3>
</asp:Content>
