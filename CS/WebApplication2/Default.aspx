<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<%@ Register assembly="DevExpress.Web.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDataView" tagprefix="dxdv" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.2, Version=9.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dxg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dxdv:ASPxDataView ID="ASPxDataView1" runat="server">
            <ItemTemplate>
                <dxg:ASPxGaugeControl ID="ASPxGaugeControl2" runat="server" BackColor="White" 
                    Height="250px" Value="00,000" Width="250px" OnLoad="GaugeLoad">
                    <Gauges>
                        <dxg:DigitalGauge AppearanceOff-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:#00FFFFFF&quot;/&gt;" 
                            AppearanceOn-ContentBrush="&lt;BrushObject Type=&quot;Solid&quot; Data=&quot;Color:WhiteSmoke&quot;/&gt;" 
                            Bounds="0, 0, 250, 250" DigitCount="5" Name="Gauge0" Padding="20, 20, 20, 20" 
                            Text="00,000">
                            <backgroundlayers>
                                <dxg:DigitalBackgroundLayerComponent BottomRight="259.8125, 99.9625" 
                                    Name="digitalBackgroundLayerComponent7" ShapeType="Style7" TopLeft="20, 0" 
                                    ZOrder="1000" />
                            </backgroundlayers>
                        </dxg:DigitalGauge>
                    </Gauges>
                </dxg:ASPxGaugeControl>
                <dxg:ASPxGaugeControl ID="ASPxGaugeControl1" runat="server" Height="260px" 
                    Width="260px" BackColor="White" Value="0" OnLoad="GaugeLoad">
                    <Gauges>
                        <dxg:CircularGauge Bounds="0, 0, 260, 260" Name="cGauge1">
                            <backgroundlayers>
                                <dxg:ArcScaleBackgroundLayerComponent Name="bg1" ScaleID="scale1" 
                                    ShapeType="CircularFull_Style7" ZOrder="1000" />
                            </backgroundlayers>
                            <needles>
                                <dxg:ArcScaleNeedleComponent EndOffset="-25" Name="needle1" ScaleID="scale1" 
                                    ShapeType="CircularFull_Style7" StartOffset="-21" ZOrder="-50" />
                            </needles>
                            <effectlayers>
                                <dxg:ArcScaleEffectLayerComponent Name="effect1" ScaleCenterPos="0.5, 1.06" 
                                    ScaleID="scale1" 
                                    Shader="&lt;ShaderObject Type=&quot;Opacity&quot; Data=&quot;Opacity[0.75]&quot;/&gt;" 
                                    ShapeType="CircularFull_Style7" Size="235, 110" ZOrder="-1000" />
                            </effectlayers>
                            <scales>
                                <dxg:ArcScaleComponent Center="125, 125" EndAngle="60" 
                                    MajorTickmark-FormatString="{0:F0}" MajorTickmark-ShapeType="Circular_Style7_2" 
                                    MajorTickmark-TextOffset="22" MajorTickmark-TextOrientation="LeftToRight" 
                                    MaxValue="100" MinorTickCount="4" MinorTickmark-ShapeType="Circular_Style7_1" 
                                    Name="scale1" RadiusX="83" RadiusY="83" StartAngle="-240">
                                </dxg:ArcScaleComponent>
                            </scales>
                        </dxg:CircularGauge>
                    </Gauges>
                </dxg:ASPxGaugeControl>
            </ItemTemplate>
        </dxdv:ASPxDataView>
    
    </div>
    </form>
</body>
</html>
