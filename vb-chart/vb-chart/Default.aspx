﻿<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="demo-container size-wide">
            <telerik:RadPageLayout runat="server" ID="Content1">
                <Rows>
                    <telerik:LayoutRow>
                        <Columns>
                            <telerik:LayoutColumn Span="12" SpanMd="12" SpanSm="12" HiddenXs="true">
                                <telerik:RadHtmlChart runat="server" ID="RadHtmlChart1" Width="100%" Height="500px">
                                    <PlotArea>
                                        <Series>
                                            <telerik:ScatterLineSeries Name="ScatterData" DataFieldX="UsedDate" DataFieldY="Usage">
                                                <TooltipsAppearance Color="White" DataFormatString="{1} on {0:M/d/yyyy hh:mm:ss}"></TooltipsAppearance>
                                                <LabelsAppearance Visible="false">
                                                </LabelsAppearance>
                                            </telerik:ScatterLineSeries>
                                        </Series>
                                        <XAxis Type="Date">
                                            <LabelsAppearance DataFormatString="{0:M/d/yyyy hh:mm:ss}" />
                                            <TitleAppearance Text="Time" />
                                        </XAxis>
                                        <YAxis MaxValue="100">
                                            <LabelsAppearance DataFormatString="{0}" />
                                            <TitleAppearance Text="Charge" />
                                        </YAxis>
                                    </PlotArea>
                                    <ChartTitle Text="Scatter Series">
                                    </ChartTitle>
                                </telerik:RadHtmlChart>
                            </telerik:LayoutColumn>
                        </Columns>
                    </telerik:LayoutRow>
                </Rows>
            </telerik:RadPageLayout>
        </div>
        <div class="demo-container1 size-wide">
                <telerik:RadPageLayout runat="server" ID="Content2">
                    <Rows>
                        <telerik:LayoutRow>
                            <Columns>
                                <telerik:LayoutColumn Span="12" SpanMd="12" SpanSm="12" HiddenXs="true">
                                        <telerik:RadHtmlChart runat="server" ID="RadHtmlChart2">
                                                <PlotArea>
                                                    <Series>
                                                        <telerik:ColumnSeries Name="Products" DataFieldY="Usage">
                                                            <TooltipsAppearance DataFormatString="{1} on {0:M/d/yyyy}" />
                                                            <LabelsAppearance Visible="false" />
                                                        </telerik:ColumnSeries>
                                                    </Series>
                                                    <XAxis DataLabelsField="Name">
                                                        <LabelsAppearance DataFormatString="{0:M/d/yyyy hh:mm:ss}" />
                                                    </XAxis>
                                                    <YAxis>
                                                        <LabelsAppearance DataFormatString="{0}" />
                                                    </YAxis>
                                                </PlotArea>
                                                <Legend>
                                                    <Appearance Visible="false" />
                                                </Legend>
                                                <ChartTitle Text="Column Series">
                                                </ChartTitle>
                                            </telerik:RadHtmlChart>
                                </telerik:LayoutColumn>
                            </Columns>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:RadPageLayout>
            </div>

    </asp:Content>