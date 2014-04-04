
Partial Class admin_newRestaurant
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Dim addItem As String = e.Values("eateryName").ToString
        Response.Write("The eatery ")
        Response.Write("<span class=highlight>")
        Response.Write(addItem)
        Response.Write("</span> has been added to the database!")
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub

End Class
