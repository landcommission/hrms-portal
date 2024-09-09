<%@ Page Language="C#" AutoEventWireup="true" Title="Asset Transfers" CodeBehind="Asset Transfer.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Asset_Transfer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Approved Asset Transfers</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">
                                Status:</label>
                            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control input-sm"
                                AppendDataBoundItems="true" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                <asp:ListItem Value="Approved">Approved</asp:ListItem>
                                <asp:ListItem Value="Posted">Received/Rejected</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="grdAssetTransferList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetTransferList_RowDataBound"
                                OnRowCommand="grdAssetTransferList_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="No" HeaderText="Requisition No"
                                        SortExpression="No" />
                                    <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                        SortExpression="Asset_No" />
                                    <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                        SortExpression="Asset_Description" />
                                    <asp:BoundField DataField="Employee_Name" HeaderText="Transfer From"
                                        SortExpression="Employee_Name" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                        SortExpression="Remarks" />
                                    <asp:BoundField DataField="New_Employee_Name" HeaderText="Transfered To"
                                        SortExpression="New_Employee_Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Approval Status"
                                        SortExpression="Status" />
                                    <asp:TemplateField HeaderText="Received/Reject">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true" Width="100px">
                                                <asp:ListItem Value="">Select</asp:ListItem>
                                                <asp:ListItem Value="Received">Accept</asp:ListItem>
                                                <asp:ListItem Value="Rejected">Reject</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Accepted/Rejected">
                                        <ItemTemplate>
                                            <asp:Label ID="lbluserStatus" runat="server" CssClass="control-label" Text='<%# Eval("User_Status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="btnConfirm" Text="Confirm" ButtonType="Button">
                                        <ItemStyle Width="60px" />
                                    </asp:ButtonField>

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
            </div>
        </div>
    </div>
</asp:Content>
