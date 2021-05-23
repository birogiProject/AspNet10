'Imports System.IO

Public Class FileUpload
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnUpload_click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Dim postfile As HttpPostedFile = upFile.PostedFile
        Dim uppath As String = Server.MapPath("~\App_Data\doc\" & Path.GetFileName(postfile.FileName))
        If rdoOver.SelectedValue = "forbid" And File.Exists(uppath) Then
            'If rdoOver.Items(rdoOver.SelectedIndex).Value = "forbid" And File.Exists(uppath) Then
            'If rdoOver.SelectedItem.Value = "forbid" And File.Exists(uppath) Then
            ltrResult.Text = "同名のファイルが存在します。"
        Else
            If postfile.ContentType = "image/gif" Then
                postfile.SaveAs(uppath)
                ltrResult.Text = postfile.FileName & "をアップロードしました。"
            Else
                ltrResult.Text = ”gif画像しかアップロードできません。"
            End If
        End If

    End Sub
End Class