using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DevExpress.Web.ASPxGauges;
using DevExpress.Web;
using DevExpress.Web.ASPxGauges.Gauges.Digital;
using DevExpress.Web.ASPxGauges.Gauges.Circular;

namespace WebApplication2
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable t = new DataTable();
            t.Columns.Add("name");
            t.Columns.Add("value", typeof(System.Int32));
            t.Rows.Add("Circular", 12);
            t.Rows.Add("Digital", 10);
            ASPxDataView1.DataSource = t;
            ASPxDataView1.DataBind();
        }

        protected void GaugeLoad(object sender, EventArgs e)
        {
            ASPxGaugeControl c = (sender as ASPxGaugeControl);
            DataViewItemTemplateContainer container = c.NamingContainer as DataViewItemTemplateContainer;
            bool isDigital = (container.DataItem as DataRowView)["name"].Equals("Circular");
            c.Visible = isDigital && c.Gauges[0] is DigitalGauge || !isDigital && c.Gauges[0] is CircularGauge;
            c.Value = (container.DataItem as DataRowView)["value"].ToString();
        }
    }
}
