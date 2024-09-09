<%@ Page Language="C#" AutoEventWireup="true" Title="Asset Disposal Lines" CodeBehind="Asset Disposal Lines.aspx.cs" MasterPageFile="~/Popup.Master" Inherits="NLC_HRMS_PORTAL.Asset_Disposal_Lines" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="grdAssetList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                        <Columns>
                                            <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="No" HeaderText="Asset No"
                                                SortExpression="No" />
                                            <asp:BoundField DataField="Item_description" HeaderText="Asset Description"
                                                SortExpression="Item_description" />
                                            <asp:BoundField DataField="Serial_No" HeaderText="Serial No"
                                                SortExpression="Serial_No" />
                                            <asp:BoundField DataField="Date_Of_Acquisition" HeaderText="Date Of Acquisition"
                                                SortExpression="Date_Of_Acquisition" />
                                            <asp:BoundField DataField="Value_Of_Purchase" HeaderText="Value Of Purchase"
                                                SortExpression="Value_Of_Purchase" />
                                            <asp:BoundField DataField="Disposal_Period" HeaderText="Disposal Period"
                                                SortExpression="Disposal_Period" />
                                            <asp:BoundField DataField="Reason_for_Disposal" HeaderText="Reason for Disposal"
                                                SortExpression="Reason_for_Disposal" />
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Assets Added!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="padding-left: 15px;">
                            <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-xs"
                                Text="Close Form" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
