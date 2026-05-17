Imports System.Data.SqlClient

Public Class Form1

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        CrystalReportViewer1.ReportSource = Nothing
        Me.WindowState = FormWindowState.Maximized

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection("Server=.;Database=BNBDAT;User Id=sa;Password=1122;")
        Dim da As New SqlDataAdapter("SELECT * FROM GLAMF", con)
        Dim dt As New DataTable()

        da.Fill(dt)

        Dim rpt As New CrystalReport2()
        rpt.SetDataSource(dt)

        CrystalReportViewer1.ReportSource = rpt
        CrystalReportViewer1.Refresh()

    End Sub

End Class