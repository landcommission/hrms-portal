<%@ Page Language="C#" AutoEventWireup="true" Title="Posted Store Requistions" MasterPageFile="~/Site.Master" CodeBehind="Receive Posted Store Req.aspx.cs" Inherits="NLC_HRMS_PORTAL.Receive_Posted_Store_Req" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <strong style="color: #8C1C03;">Posted Store Requisitions List</strong>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="gridPostedRequisition" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridPostedRequisition_RowCommand"
                                OnRowDataBound="gridPostedRequisition_RowDataBound" >
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="No" HeaderText="No" />
                                    <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                    <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                    <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                    <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Lines">
                                        <ItemStyle Width="100px" />
                                    </asp:ButtonField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                                <asp:ListItem Value="Received">Receive</asp:ListItem>
                                                <asp:ListItem Value="Rejected">Reject</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="BTNSUBMIT" ButtonType="Button" ControlStyle-ForeColor="#A66D03" Text="Submit"></asp:ButtonField>
                                </Columns>
                                <PagerStyle CssClass="bs-pagination" />
                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                <EmptyDataTemplate>No Posted Store requisitions Available.</EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
