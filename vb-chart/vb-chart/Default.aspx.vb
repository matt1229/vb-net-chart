
Imports System
Imports System.Data
Imports System.Web
Imports Telerik.Web.UI

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs)
        If (Not (IsNothing(RadHtmlChart1))) Then
            RadHtmlChart1.DataSource = GetData()
            RadHtmlChart1.DataBind()
            RadHtmlChart2.DataSource = GetData2()
            RadHtmlChart2.DataBind()
        End If
    End Sub

    Private Function GetData() As DataSet
        Dim ds As New DataSet("ChargeCurrentTimeRatio")
        Dim dt As New DataTable("ChargeData")
        dt.Columns.Add("Id", Type.[GetType]("System.Int32"))
        dt.Columns.Add("UsedDate", Type.[GetType]("System.DateTime"))
        dt.Columns.Add("Usage", Type.[GetType]("System.Decimal"))

        Dim dataDirectory As String = AppDomain.CurrentDomain.BaseDirectory

        Using MyReader As New Microsoft.VisualBasic.
                        FileIO.TextFieldParser(
                          dataDirectory + "Line.csv")
            MyReader.TextFieldType = FileIO.FieldType.Delimited
            MyReader.SetDelimiters(",")
            Dim currentRow As String()
            Dim idx As Integer
            idx = 0

            While Not MyReader.EndOfData
                Try
                    currentRow = MyReader.ReadFields()
                    Dim currentDate As String
                    Dim currentValue As String

                    currentDate = currentRow(0)
                    currentValue = currentRow(1)

                    If (idx > 0) Then
                        dt.Rows.Add(1, Convert.ToDateTime(currentDate), CDbl(Val(currentValue)))
                    End If

                    idx += 1

                Catch ex As Microsoft.VisualBasic.
                        FileIO.MalformedLineException
                    MsgBox("Line " & ex.Message &
                "is not valid and will be skipped.")
                End Try
            End While
        End Using

        ds.Tables.Add(dt)
        Return ds
    End Function

    Private Function GetData2() As DataSet
        Dim ds As New DataSet("ChargeCurrentTimeRatio")
        Dim dt As New DataTable("ChargeData")
        dt.Columns.Add("Id", Type.[GetType]("System.Int32"))
        dt.Columns.Add("UsedDate", Type.[GetType]("System.String"))
        dt.Columns.Add("Usage", Type.[GetType]("System.Decimal"))

        Dim dataDirectory As String = AppDomain.CurrentDomain.BaseDirectory

        Using MyReader As New Microsoft.VisualBasic.
                        FileIO.TextFieldParser(
                          dataDirectory + "Column.csv")
            MyReader.TextFieldType = FileIO.FieldType.Delimited
            MyReader.SetDelimiters(",")
            Dim currentRow As String()
            Dim idx As Integer
            idx = 0

            While Not MyReader.EndOfData
                Try
                    currentRow = MyReader.ReadFields()
                    Dim currentDate As String
                    Dim currentValue As String

                    currentDate = currentRow(0)
                    currentValue = currentRow(1)

                    If (idx > 0 And IsDate(currentDate)) Then
                        dt.Rows.Add(1, DateTime.Parse(currentDate), CDbl(Val(currentValue)))
                    End If

                    idx += 1

                Catch ex As Microsoft.VisualBasic.
                        FileIO.MalformedLineException
                    MsgBox("Line " & ex.Message &
                "is not valid and will be skipped.")
                End Try
            End While
        End Using

        ds.Tables.Add(dt)
        Return ds
    End Function
    Protected Sub RadRadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim radioButtonList As RadRadioButtonList = TryCast(sender, RadRadioButtonList)
        If (radioButtonList.SelectedValue Is "scatter") Then
            RadHtmlChart1.Visible = True
            RadHtmlChart2.Visible = False
        Else
            RadHtmlChart1.Visible = False
            RadHtmlChart2.Visible = True
        End If
    End Sub
End Class