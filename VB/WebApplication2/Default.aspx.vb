Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports DevExpress.Web.ASPxGauges
Imports DevExpress.Web.ASPxDataView
Imports DevExpress.Web.ASPxGauges.Gauges.Digital
Imports DevExpress.Web.ASPxGauges.Gauges.Circular

Namespace WebApplication2
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			Dim t As New DataTable()
			t.Columns.Add("name")
			t.Columns.Add("value", GetType(System.Int32))
			t.Rows.Add("Circular", 12)
			t.Rows.Add("Digital", 10)
			ASPxDataView1.DataSource = t
			ASPxDataView1.DataBind()
		End Sub

		Protected Sub GaugeLoad(ByVal sender As Object, ByVal e As EventArgs)
			Dim c As ASPxGaugeControl = (TryCast(sender, ASPxGaugeControl))
			Dim container As DataViewItemTemplateContainer = TryCast(c.NamingContainer, DataViewItemTemplateContainer)
			Dim isDigital As Boolean = (TryCast(container.DataItem, DataRowView))("name").Equals("Circular")
			c.Visible = isDigital AndAlso TypeOf c.Gauges(0) Is DigitalGauge OrElse (Not isDigital) AndAlso TypeOf c.Gauges(0) Is CircularGauge
			c.Value = (TryCast(container.DataItem, DataRowView))("value").ToString()
		End Sub
	End Class
End Namespace
