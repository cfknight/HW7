<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    
    <%If Not IsPostBack Then%>
    Search restaurants by name, type, or location:

    <asp:TextBox ID="searchTB" runat="server"></asp:TextBox>
    <br />

    <%Else%>
    Search again:
    <asp:TextBox ID="searchTB2" runat="server"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1"
        CssClass="gridview" PageSize="10" PagerStyle-CssClass="pgr">
    </asp:GridView>
    
    <%End If%>


</asp:Content>

