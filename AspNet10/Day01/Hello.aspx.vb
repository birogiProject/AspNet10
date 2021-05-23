Public Class Hello
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        lblGreet.Text = "こんにちは、 " & txtName.Text & "さん！"


        'rdoBtnLst1リストの内容を処理
        If Not String.IsNullOrWhiteSpace(rdoBtnLst1.SelectedValue) Then
            Response.Write(rdoBtnLst1.SelectedValue & "<br/>")
        End If

        'chksリストの内容を順番に処理
        For Each item As ListItem In chks.Items
            'リスト項目が選択状態にある場合のみ、その値を出力
            If item.Selected Then
                Response.Write(item.Value & "<br/>")
            End If
        Next

        'CheckBox1でエンジニアであるかを表示
        If CheckBox1.Checked Then
            Response.Write("エンジニアである" & "<br/>")
        Else
            Response.Write("エンジニアでない" & "<br/>")
        End If


        'DropDownList1の内容を処理(血液型の再確認)
        If Not String.IsNullOrWhiteSpace(DropDownList1.SelectedValue) Then
            Response.Write(DropDownList1.SelectedValue & "<br/>")
        End If

        'ListBox2リストの内容を順番に処理
        For Each item As ListItem In ListBox2.Items
            'リスト項目が選択状態にある場合のみ、その値を出力
            If item.Selected Then
                Response.Write(item.Value & "<br/>")
            End If
        Next





    End Sub

End Class