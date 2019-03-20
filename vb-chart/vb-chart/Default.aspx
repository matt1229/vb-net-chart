<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadHtmlChart runat="server" ID="ScatterLineChart1" Transitions="true">
        <PlotArea>
            <Series>
                <telerik:ScatterLineSeries Name="0.8C" MissingValues="Gap">
                    <LabelsAppearance DataFormatString="{1}% in {0} minutes" Position="Below" />
                    <MarkersAppearance MarkersType="Circle" />
                    <SeriesItems>
                        <telerik:ScatterSeriesItem X="10" Y="10" />
                        <telerik:ScatterSeriesItem X="15" Y="20" />
                        <telerik:ScatterSeriesItem />
                        <telerik:ScatterSeriesItem X="32" Y="40" />
                        <telerik:ScatterSeriesItem X="43" Y="50" />
                        <telerik:ScatterSeriesItem X="55" Y="60" />
                        <telerik:ScatterSeriesItem X="60" Y="70" />
                    </SeriesItems>
                </telerik:ScatterLineSeries>
                <telerik:ScatterLineSeries Name="1.6C">
                    <LabelsAppearance DataFormatString="{1}% in {0} minutes" Position="Below" />
                    <MarkersAppearance MarkersType="Square" />
                    <SeriesItems>
                        <telerik:ScatterSeriesItem X="10" Y="40" />
                        <telerik:ScatterSeriesItem X="17" Y="50" />
                        <telerik:ScatterSeriesItem X="18" Y="70" />
                        <telerik:ScatterSeriesItem X="35" Y="90" />
                        <telerik:ScatterSeriesItem X="47" Y="95" />
                        <telerik:ScatterSeriesItem X="60" Y="100" />
                    </SeriesItems>
                </telerik:ScatterLineSeries>
            </Series>
            <XAxis AxisCrossingValue="0" Color="Black" MajorTickType="Outside" MinorTickType="Outside"
                Reversed="false" MinValue="0" MaxValue="90" Step="10">
                <LabelsAppearance DataFormatString="{0}m" RotationAngle="0" />
                <MajorGridLines Color="#EFEFEF" Width="1" />
                <MinorGridLines Color="#F7F7F7" Width="1" />
                <TitleAppearance Position="Center" RotationAngle="0" Text="Time" />
            </XAxis>
            <YAxis AxisCrossingValue="0" Color="Black" MajorTickSize="1" MajorTickType="Outside"
                MaxValue="100" MinorTickSize="1" MinorTickType="Outside" MinValue="0" Reversed="false"
                Step="20">
                <LabelsAppearance DataFormatString="{0}%" RotationAngle="0" />
                <MajorGridLines Color="#EFEFEF" Width="1" />
                <MinorGridLines Color="#F7F7F7" Width="1" />
                <TitleAppearance Position="Center" RotationAngle="0" Text="Charge" />
            </YAxis>
        </PlotArea>
        <ChartTitle Text="Charge Current vs. Charge Time">
        </ChartTitle>
        <Legend>
            <Appearance Position="Bottom" />
        </Legend>
    </telerik:RadHtmlChart>

</asp:Content>
