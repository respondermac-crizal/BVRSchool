Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim pageName As String = System.IO.Path.GetFileName(Request.Path).ToLower()

        If pageName.ToLower = "default.aspx" Then
            LnkHome.Attributes("class") = "active"
        ElseIf pageName.ToLower = "about.aspx" Then
            lnkAbout.Attributes("class") = "active"
        ElseIf pageName.ToLower = "contact.aspx" Then
            lnkContact.Attributes("class") = "active"
        ElseIf pageName.ToLower = "academics.aspx" Then
            lnkAcademics.Attributes("class") = "active"
        End If
    End Sub
End Class