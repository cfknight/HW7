
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub searchTB_TextChanged(sender As Object, e As EventArgs) Handles searchTB.TextChanged
        'Dim searchWord As String
        'searchWord = "Select * from ### where (name like '%" + searchTB2.Text.ToString() + "%') 
        'or (City like '%" + searchTB2.Text.ToString() + "%') 
        'or (Style like '%" + searchTB2.Text.ToString() + "%')"
        'SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub searchTB2_TextChanged(sender As Object, e As EventArgs) Handles searchTB2.TextChanged
        'Dim searchWord As String
        'searchWord = "Select * from ### where (name like '%" + searchTB2.Text.ToString() + "%') 
        'or (City like '%" + searchTB2.Text.ToString() + "%') 
        'or (Style like '%" + searchTB2.Text.ToString() + "%')"
        'SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
