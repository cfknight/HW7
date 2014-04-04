<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantCS %>" DeleteCommand="DELETE FROM [Restaurants] WHERE [eateryID] = @eateryID" InsertCommand="INSERT INTO [Restaurants] ([eateryName], [address], [city], [phoneNumber], [style], [swankiness]) VALUES (@eateryName, @address, @city, @phoneNumber, @style, @swankiness)" SelectCommand="SELECT * FROM [Restaurants]" UpdateCommand="UPDATE [Restaurants] SET [eateryName] = @eateryName, [address] = @address, [city] = @city, [phoneNumber] = @phoneNumber, [style] = @style, [swankiness] = @swankiness WHERE [eateryID] = @eateryID">
        <DeleteParameters>
            <asp:Parameter Name="eateryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eateryName" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="style" Type="String" />
            <asp:Parameter Name="swankiness" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eateryName" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="style" Type="String" />
            <asp:Parameter Name="swankiness" Type="String" />
            <asp:Parameter Name="eateryID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
        DataSourceID="SqlDataSource1" CssClass="gridview" PagerStyle-CssClass="pgr" AutoGenerateColumns="False" DataKeyNames="eateryID">
        <Columns>
            <asp:BoundField DataField="eateryName" HeaderText="Eatery Name" SortExpression="eateryName" />
            <asp:BoundField DataField="style" HeaderText="Style" SortExpression="style" />
            <asp:HyperLinkField DataNavigateUrlFields="eateryID" DataNavigateUrlFormatString="~/member/Details.aspx?eateryID={0}" Text="Details" />
        </Columns>
<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
</asp:Content>

