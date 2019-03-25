<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
                                            <telerik:ScatterLineSeries Name="0.8C" DataFieldX="UsedDate" DataFieldY="Usage">
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
                                    <ChartTitle Text="Charge current vs. charge time">
                                    </ChartTitle>
                                </telerik:RadHtmlChart>
                            </telerik:LayoutColumn>
                        </Columns>
                    </telerik:LayoutRow>
                </Rows>
            </telerik:RadPageLayout>
        </div>

    </asp:Content>