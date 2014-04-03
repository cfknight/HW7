<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsview" HeaderText="Eatery Details"
    HeaderStyle-CssClass="header" FieldHeaderStyle-CssClass="fieldheader" itemstyle-cssclass="item" 
        CommandRowStyle-CssClass="command">
        
    </asp:DetailsView>

    <a href="~/default.aspx">Back</a>

</asp:Content>

