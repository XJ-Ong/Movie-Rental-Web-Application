<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ex_02.aspx.cs" Inherits="WAPP2502.Ex_02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center">User Profile</h1>
    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
    <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="invalid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtFirstName_TextChanged" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCPassword" runat="server" Text="Confirm Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCPassword" runat="server" OnTextChanged="txtFirstName_TextChanged" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" CultureInvariantValues="True" ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblEmail0" runat="server" Text="Gender:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Gender" OnCheckedChanged="rbtnMale_CheckedChanged" Text="Male" />
    &nbsp;<asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Gender" Text="Female" />
    <br />
    <asp:Label ID="lblFavouriteLanguage" runat="server" Text="Favourite Programming Language:"></asp:Label>
    <asp:CheckBoxList ID="cboxPLanguages" runat="server" OnSelectedIndexChanged="cboxPLanguages_SelectedIndexChanged">
        <asp:ListItem>Python</asp:ListItem>
        <asp:ListItem>Java</asp:ListItem>
        <asp:ListItem>R</asp:ListItem>
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>C#</asp:ListItem>
        <asp:ListItem>C++</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <hr />
    </asp:Content>
