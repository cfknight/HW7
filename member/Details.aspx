<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantCS %>" SelectCommand="SELECT * FROM [Restaurants] WHERE ([eateryID] = @eateryID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="eateryID" QueryStringField="eateryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsview" HeaderText="Eatery Details"
    HeaderStyle-CssClass="header" FieldHeaderStyle-CssClass="fieldheader" itemstyle-cssclass="item" 
        CommandRowStyle-CssClass="command" AutoGenerateRows="False" DataKeyNames="eateryID" DataSourceID="SqlDataSource1">
        
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>

        <Fields>
            <asp:BoundField DataField="eateryName" HeaderText="Eatery Name" SortExpression="eateryName" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
            <asp:BoundField DataField="style" HeaderText="Style" SortExpression="style" />
            <asp:BoundField DataField="swankiness" HeaderText="Swankiness" SortExpression="swankiness" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
        
    </asp:DetailsView>

    <br />
    <br />

    <a href="./default.aspx">Back</a>

</asp:Content>

