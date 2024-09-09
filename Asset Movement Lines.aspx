<%@ Page Language="C#" AutoEventWireup="true" Title="Assets List" MasterPageFile="~/Popup.Master" CodeBehind="Asset Movement Lines.aspx.cs" Inherits="NLC_HRMS_PORTAL.Asset_Movement_Lines" %>

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
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="Issue" runat="server">
                                <div class="form-horizontal">
                                    <hr />
                                    <strong style="color: #8C1C03;">Asset List</strong>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <asp:GridView ID="grdAssetIssueList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetIssueList_RowDataBound"
                                                    OnRowCommand="grdAssetIssueList_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                            SortExpression="Asset_No" />
                                                        <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                            SortExpression="Asset_Description" />
                                                        <asp:BoundField DataField="Asset_Serial_No" HeaderText="Serial No"
                                                            SortExpression="Asset_Serial_No" />
                                                        <%-- <asp:BoundField DataField="Responsible_Employee_Code" HeaderText="Responsible Staff Code"
                                                            SortExpression="Responsible_Employee_Code" />
                                                        <asp:BoundField DataField="Employee_Name" HeaderText="Responsible Staff Name"
                                                            SortExpression="Employee_Name" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                            SortExpression="Remarks" />
                                                        <asp:BoundField DataField="Status" HeaderText="Approval Status"
                                                            SortExpression="Status" />
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                                    AppendDataBoundItems="true" Width="100px">
                                                                    <asp:ListItem Value="">Select</asp:ListItem>
                                                                    <asp:ListItem Value="Received">Received</asp:ListItem>
                                                                    <asp:ListItem Value="Rejected">Returned</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                            <ItemStyle Width="60px" />
                                                        </asp:ButtonField>
                                                        <asp:BoundField DataField="Line_No" HeaderText="Line_No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="Line_No" />
                                                        <asp:BoundField DataField="No" HeaderText="No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="No" />
                                                        <asp:TemplateField HeaderText="Accepted/Rejected">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbluserStatus" runat="server" CssClass="control-label" Text='<%# Eval("User_Status") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
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
                            </asp:View>
                            <asp:View ID="Return" runat="server">
                                <div class="form-horizontal">
                                    <hr />
                                    <strong style="color: #8C1C03;">Asset(s) Return List</strong>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <asp:GridView ID="grdAssetReturnList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetReturnList_RowDataBound"
                                                    OnRowCommand="grdAssetReturnList_RowCommand">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                            SortExpression="Asset_No" />
                                                        <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                            SortExpression="Asset_Description" />
                                                        <asp:BoundField DataField="Asset_Serial_No" HeaderText="Serial No"
                                                            SortExpression="Asset_Serial_No" />
                                                        <%--  <asp:BoundField DataField="Responsible_Employee_Code" HeaderText="Responsible Staff Code"
                                                            SortExpression="Responsible_Employee_Code" />
                                                        <asp:BoundField DataField="Employee_Name" HeaderText="Responsible Staff Name"
                                                            SortExpression="Employee_Name" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                            SortExpression="Remarks" />
                                                        <asp:BoundField DataField="Status" HeaderText="Approval Status"
                                                            SortExpression="Status" />
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                                    AppendDataBoundItems="true" Width="100px">
                                                                    <asp:ListItem Value="">Select</asp:ListItem>
                                                                    <asp:ListItem Value="Received">Returned</asp:ListItem>
                                                                    <asp:ListItem Value="Rejected">Not Returned</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                            <ItemStyle Width="60px" />
                                                        </asp:ButtonField>
                                                        <asp:BoundField DataField="Line_No" HeaderText="Line_No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="Line_No" />
                                                        <asp:BoundField DataField="No" HeaderText="No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="No" />
                                                        <asp:TemplateField HeaderText="Accepted/Rejected">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbluserStatus" runat="server" CssClass="control-label" Text='<%# Eval("User_Status") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
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
                            </asp:View>
                            <asp:View ID="Transfer" runat="server">
                                <div class="form-horizontal">
                                    <hr />
                                    <strong style="color: #8C1C03;">Asset(s) Transfer List</strong>
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
                                                        <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                            SortExpression="Asset_No" />
                                                        <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                            SortExpression="Asset_Description" />
                                                        <%--    <asp:BoundField DataField="New_Responsible_Employee_Code" HeaderText="New Responsible Staff Code"
                                                            SortExpression="New_Responsible_Employee_Code" />
                                                        <asp:BoundField DataField="New_Employee_Name" HeaderText="New Responsible Staff Name"
                                                            SortExpression="New_Employee_Name" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                            SortExpression="Remarks" />
                                                        <asp:BoundField DataField="New_Employee_Name" HeaderText="New Responsible Staff"
                                                            SortExpression="New_Employee_Name" />
                                                        <asp:BoundField DataField="Status" HeaderText="Approval Status"
                                                            SortExpression="Status" />
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                                    AppendDataBoundItems="true" Width="100px">
                                                                    <asp:ListItem Value="">Select</asp:ListItem>
                                                                    <asp:ListItem Value="Received">Transfered</asp:ListItem>
                                                                    <asp:ListItem Value="Rejected">Not Transfered</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                            <ItemStyle Width="60px" />
                                                        </asp:ButtonField>
                                                        <asp:BoundField DataField="Line_No" HeaderText="Line_No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="Line_No" />
                                                        <asp:BoundField DataField="No" HeaderText="No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="No" />
                                                        <asp:TemplateField HeaderText="Accepted/Rejected">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbluserStatus" runat="server" CssClass="control-label" Text='<%# Eval("User_Status") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

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
                            </asp:View>
                            <asp:View ID="Exchange" runat="server">
                                <div class="form-horizontal">
                                    <hr />
                                    <strong style="color: #8C1C03;">Asset(s) Exchange List</strong>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <asp:GridView ID="grdAssetExchangeList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="grdAssetExchangeList_RowCommand"
                                                    OnRowDataBound="grdAssetExchangeList_RowDataBound">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                            SortExpression="Asset_No" />
                                                        <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                            SortExpression="Asset_Description" />
                                                        <%--  <asp:BoundField DataField="New_Responsible_Employee_Code" HeaderText="New Responsible Staff Code"
                                                            SortExpression="New_Responsible_Employee_Code" />
                                                        <asp:BoundField DataField="New_Employee_Name" HeaderText="New Responsible Staff Name"
                                                            SortExpression="New_Employee_Name" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                            SortExpression="Remarks" />
                                                        <asp:BoundField DataField="Status" HeaderText="Approval Status"
                                                            SortExpression="Status" />
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                                    AppendDataBoundItems="true" Width="100px">
                                                                    <asp:ListItem Value="">Select</asp:ListItem>
                                                                    <asp:ListItem Value="Received">Exchanged</asp:ListItem>
                                                                    <asp:ListItem Value="Rejected">Not Exchanged</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                            <ItemStyle Width="60px" />
                                                        </asp:ButtonField>
                                                        <asp:BoundField DataField="Line_No" HeaderText="Line_No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="Line_No" />
                                                        <asp:BoundField DataField="No" HeaderText="No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                            SortExpression="No" />
                                                        <asp:TemplateField HeaderText="Accepted/Rejected">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbluserStatus" runat="server" CssClass="control-label" Text='<%# Eval("User_Status") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
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
                            </asp:View>
                        </asp:MultiView>
                        <div class="row" style="padding-left: 15px;">
                            <asp:Button runat="server" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-info btn-sm"
                                Text="Save" />
                            <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                                Text="Close" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
