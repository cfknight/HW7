<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newRestaurant.aspx.vb" Inherits="admin_newRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantCS %>" DeleteCommand="DELETE FROM [Restaurants] WHERE [eateryID] = @eateryID" InsertCommand="INSERT INTO [Restaurants] ([eateryName], [address], [city], [phoneNumber], [style], [swankiness]) VALUES (@eateryName, @address, @city, @phoneNumber, @style, @swankiness)" SelectCommand="SELECT * FROM [Restaurants] WHERE ([eateryID] = @eateryID)" UpdateCommand="UPDATE [Restaurants] SET [eateryName] = @eateryName, [address] = @address, [city] = @city, [phoneNumber] = @phoneNumber, [style] = @style, [swankiness] = @swankiness WHERE [eateryID] = @eateryID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="eateryID" QueryStringField="eateryID" Type="Int32" />
        </SelectParameters>
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

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsview" HeaderText="Eatery Details"
    HeaderStyle-CssClass="header" FieldHeaderStyle-CssClass="fieldheader" itemstyle-cssclass="item" 
        CommandRowStyle-CssClass="command" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="eateryID" DataSourceID="SqlDataSource1">
        
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>

        <Fields>
            <asp:BoundField DataField="eateryName" HeaderText="Eatery Name" SortExpression="eateryName" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
            <asp:BoundField DataField="style" HeaderText="Style" SortExpression="style" />
            <asp:BoundField DataField="swankiness" HeaderText="Swankiness" SortExpression="swankiness" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
        
    </asp:DetailsView>

    <a href="~/default.aspx">Back</a>

</asp:Content>

