<%@ Page Language="C#" AutoEventWireup="true" Title="Attachments" MasterPageFile="~/Popup.Master" CodeBehind="Supply Chain Docs.aspx.cs" Inherits="NLC_HRMS_PORTAL.Supply_Chain_Docs" %>

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
                        <div class="row" id="uploadDiv" runat="server">
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

                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridAttachments" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" OnRowCommand="gridAttachments_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="#">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FileUrl" HtmlEncode="false">
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png"></asp:ButtonField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>There are no attachments found.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="padding-left: 15px;">
                            <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                                Text="Close" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
