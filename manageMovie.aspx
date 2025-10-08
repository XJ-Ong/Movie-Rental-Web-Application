<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageMovie.aspx.cs" Inherits="WAPP2502.manageMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Movie Management Dashboard</h1>
    <table class="table">
        <tr>
            <td>Title</td>
            <td><asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Genre</td>
            <td>
                <asp:DropDownList ID="ddlGenre" runat="server" CssClass="form-select" >
                    <asp:ListItem Value="Anime">Action</asp:ListItem>
                    <asp:ListItem Value="Fantasy">Fantasy</asp:ListItem>
                    <asp:ListItem Value="Romance">Romance</asp:ListItem>
                    <asp:ListItem Value="Mystery">Mystery</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Release Year</td>
            <td><asp:TextBox ID="txtYear" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Rating</td>
            <td><asp:TextBox ID="txtRating" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Picture</td>
            <td>
                <asp:FileUpload ID="fuPicture" runat="server" CssClass="form-control" />
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFilename" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>            
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wappConnectionString1 %>" DeleteCommand="DELETE FROM [tblMovies] WHERE [MID] = @MID" InsertCommand="INSERT INTO [tblMovies] ([title], [genre], [releaseYear], [rating], [picture]) VALUES (@title, @genre, @releaseYear, @rating, @picture)" SelectCommand="SELECT * FROM [tblMovies]" UpdateCommand="UPDATE [tblMovies] SET [title] = @title, [genre] = @genre, [releaseYear] = @releaseYear, [rating] = @rating, [picture] = @picture WHERE [MID] = @MID">
            <DeleteParameters>
                <asp:SessionParameter Name="MID" SessionField="MID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtTitle" Name="title" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ddlGenre" Name="genre" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtYear" Name="releaseYear" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtRating" Name="rating" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="lblFilename" Name="picture" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtTitle" Name="title" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ddlGenre" Name="genre" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtYear" Name="releaseYear" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtRating" Name="rating" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="lblFilename" Name="picture" PropertyName="Text" Type="String" />
                <asp:SessionParameter Name="MID" SessionField="MID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="MID" HeaderText="MID" InsertVisible="False" ReadOnly="True" SortExpression="MID" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                <asp:BoundField DataField="releaseYear" HeaderText="releaseYear" SortExpression="releaseYear" />
                <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                <asp:ImageField DataImageUrlField="picture" HeaderText="Picture">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </p>
</asp:Content>
