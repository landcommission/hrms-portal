<%@ Page Language="C#" AutoEventWireup="true" Title="Comments" MasterPageFile="~/Popup.Master" CodeBehind="Comments.aspx.cs" Inherits="NLC_HRMS_PORTAL.Comments" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridComments" runat="server" AutoGenerateColumns="False" DataKeyNames="Application Code"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#ABD904"
                                        HeaderStyle-ForeColor="White">
                                        <Columns>
                                            <asp:BoundField DataField="Application Code" HeaderText="Application Code." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="User ID" HeaderText="Approver ID." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Approver Name" HeaderText="Approver Name." />
                                            <asp:BoundField DataField="Approver Comments" HeaderText="Approver Comments."></asp:BoundField>
                                            <asp:BoundField DataField="Date Modified" HeaderText="Date Approved." DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No comments available.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-6 col-md-offset-11">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                                        Text="Close" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
