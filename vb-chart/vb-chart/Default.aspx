<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <telerik:radcombobox id="RadComboBox1" 
                    runat="server" 
                    OnClientSelectedIndexChanged="OnClientSelectedIndexChangingHandler">
                  <Items >   
                     <telerik:RadComboBoxItem runat="server" Text="Please select item" Value="-1" />   
                    <telerik:RadComboBoxItem runat="server" Text="Well 1" Value="1" />   
                    <telerik:RadComboBoxItem runat="server" Text="Well 2" Value="2" />   
                    <telerik:RadComboBoxItem runat="server" Text="Well 3" Value="3" /> 
                </Items>
           </telerik:radcombobox>
            <div class="radio-container">
               <br />
               <telerik:RadRadioButtonList runat="server" ID="ChartType" AutoPostBack="true" CssClass="content" OnSelectedIndexChanged="RadRadioButtonList1_SelectedIndexChanged">
                  <Items>
                    <telerik:ButtonListItem Text="Scatter" Value="scatter" />
                    <telerik:ButtonListItem Text="Column" Value="column" />
                  </Items>
               </telerik:RadRadioButtonList>
                <br />
                <br />
            </div>
           <script type="text/javascript">
               function OnClientSelectedIndexChangingHandler(sender, eventArgs) {
                    var radcombobox = $find('<%=RadComboBox1.ClientID %>');
                    var radiobox = $find('<%=ChartType.ClientID %>');
                    var selecteditemtext = radcombobox.get_selectedItem().get_text();
                    var selecteditemvalue = radcombobox.get_selectedItem().get_value();
                    if (selecteditemvalue !== "-1") {
                       $(".radio-container").attr("style", "visibility: visible");
                        radiobox.set_visible(true);
                    } else {
                       $(".radio-container").attr("style", "visibility: hidden");
                       $(".demo-container").attr("style", "visibility: hidden");
                       $(".demo-container1").attr("style", "visibility :hidden");
                    }
               }
            </script>
        <div class="demo-container size-wide" style="width:100%; overflow-x:scroll; overflow-y: hidden">
            <telerik:RadPageLayout runat="server" ID="Content1">
               
                <Rows>
                    <telerik:LayoutRow>
                        <Columns>
                            <telerik:LayoutColumn Span="12" SpanMd="12" SpanSm="12" HiddenXs="true">
                                <telerik:RadHtmlChart runat="server" ID="RadHtmlChart1" Width="20000px" Height="500px" Visible="False" >
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
                                        <YAxis>
                                            <LabelsAppearance DataFormatString="{0}" />
                                            <TitleAppearance Text="Charge" />
                                        </YAxis>
                                    </PlotArea>
                                    <ChartTitle Text="Scatter">
                                    </ChartTitle>
                                </telerik:RadHtmlChart>
                            </telerik:LayoutColumn>
                        </Columns>
                    </telerik:LayoutRow>
                </Rows>
            </telerik:RadPageLayout>
        </div>
        <div class="demo-container1 size-wide" style="width:100%; overflow-x:scroll; overflow-y: hidden">
                <telerik:RadPageLayout runat="server" ID="Content2">
                    <Rows>
                        <telerik:LayoutRow>
                            <Columns>
                                <telerik:LayoutColumn Span="12" SpanMd="12" SpanSm="12" HiddenXs="true">
                                        <telerik:RadHtmlChart runat="server" ID="RadHtmlChart2" Width="20000px" Visible="False" >
                                                <PlotArea>
                                                    <Series>
                                                        <telerik:ColumnSeries Name="Products" DataFieldY="Usage">
                                                            <TooltipsAppearance DataFormatString="{0}" />
                                                            <LabelsAppearance Visible="false" />
                                                        </telerik:ColumnSeries>
                                                    </Series>
                                                    <XAxis DataLabelsField="UsedDate" BaseUnit="days">
                                                        <LabelsAppearance DataFormatString="M/d/yyyy" RotationAngle="-45" />
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