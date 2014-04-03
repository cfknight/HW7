<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantCS %>" SelectCommand="SELECT * FROM [Restaurants]"></asp:SqlDataSource>
    
    
    <%If Not IsPostBack Then%>
    Search restaurants by name, type, or location:

    <asp:TextBox ID="searchTB" runat="server"></asp:TextBox>
    <br />
    <br />

    <%Else%>
    Search again:
    <asp:TextBox ID="searchTB2" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
        CssClass="gridview" PagerStyle-CssClass="pgr" AutoGenerateColumns="False" DataKeyNames="eateryID">
        <Columns>
            <asp:BoundField DataField="eateryName" HeaderText="Eatery Name" SortExpression="eateryName" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
            <asp:BoundField DataField="style" HeaderText="Style" SortExpression="style" />
            <asp:BoundField DataField="swankiness" HeaderText="Swankiness" SortExpression="swankiness" />
        </Columns>
<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
    
    <%End If%>

    <br />
</asp:Content>

