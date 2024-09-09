<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attachments.aspx.cs" Title="Attachments" MasterPageFile="~/Popup.Master" Inherits="NLC_HRMS_PORTAL.Attachments" %>

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
                                    <asp:GridView ID="gridAttachments" runat="server" DataSourceID="dsAttachments" AutoGenerateColumns="False" DataKeyNames="Link ID"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White">
                                        <Columns>
                                            <asp:TemplateField HeaderText="" HeaderStyle-Width="10%">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnDeleteRecord" runat="server" ForeColor="#8C1C03" Text="Delete Record" CommandName="DeleteRecord"
                                                        OnClientClick="return confirm('Are you sure you want to delete this Record?');"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnDeleteRecord_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Link ID" HeaderStyle-Width="6%" HeaderText="Link ID." ReadOnly="True"></asp:BoundField>
                                            <asp:TemplateField HeaderText="Document">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="hlDescription" runat="server" ForeColor="Green" NavigateUrl='<%#Eval("URL", "{0}")%>'
                                                        Target="_blank" Text='<%# Eval("Description", "{0}")%>' ToolTip='<%# Eval("Description", "{0}")%>'>
                                                    </asp:HyperLink>
                                                </ItemTemplate>
                                                <ItemStyle Font-Bold="True" ForeColor="Green" HorizontalAlign="Left"></ItemStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>There are no attachments found.</EmptyDataTemplate>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="dsAttachments" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        File Upload:</label>
                                    <div class="col-md-8">
                                        <asp:FileUpload ID="fuImage" CssClass="form-control" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-info btn-sm"
                                        Text="Upload" />
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
