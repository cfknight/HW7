
Partial Class login_default
    Inherits System.Web.UI.Page

    'make cursor automatically appear in login box so user doesn't have to click in
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub

End Class
