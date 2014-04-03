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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
        DataSourceID="SqlDataSource1" CssClass="gridview" PagerStyle-CssClass="pgr" AutoGenerateColumns="False" DataKeyNames="eateryID">
        <Columns>
            <asp:BoundField DataField="eateryID" HeaderText="eateryID" InsertVisible="False" ReadOnly="True" SortExpression="eateryID" />
            <asp:BoundField DataField="eateryName" HeaderText="eateryName" SortExpression="eateryName" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
            <asp:BoundField DataField="style" HeaderText="style" SortExpression="style" />
            <asp:BoundField DataField="swankiness" HeaderText="swankiness" SortExpression="swankiness" />
        </Columns>
<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
</asp:Content>

