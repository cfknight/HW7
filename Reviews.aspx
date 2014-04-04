<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Reviews.aspx.vb" Inherits="Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurantCS %>" DeleteCommand="DELETE FROM [Reviews] WHERE [reviewID] = @reviewID" InsertCommand="INSERT INTO [Reviews] ([restID], [food], [service], [price], [atmosphere], [overall], [average], [favoriteDish], [comments]) VALUES (@restID, @food, @service, @price, @atmosphere, @overall, @average, @favoriteDish, @comments)" SelectCommand="SELECT * FROM [Reviews]" UpdateCommand="UPDATE [Reviews] SET [restID] = @restID, [food] = @food, [service] = @service, [price] = @price, [atmosphere] = @atmosphere, [overall] = @overall, [average] = @average, [favoriteDish] = @favoriteDish, [comments] = @comments WHERE [reviewID] = @reviewID">
        <DeleteParameters>
            <asp:Parameter Name="reviewID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="restID" Type="Int32" />
            <asp:Parameter Name="food" Type="Int32" />
            <asp:Parameter Name="service" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="atmosphere" Type="Int32" />
            <asp:Parameter Name="overall" Type="Int32" />
            <asp:Parameter Name="average" Type="Int32" />
            <asp:Parameter Name="favoriteDish" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="restID" Type="Int32" />
            <asp:Parameter Name="food" Type="Int32" />
            <asp:Parameter Name="service" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="atmosphere" Type="Int32" />
            <asp:Parameter Name="overall" Type="Int32" />
            <asp:Parameter Name="average" Type="Int32" />
            <asp:Parameter Name="favoriteDish" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="reviewID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

