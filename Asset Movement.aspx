<%@ Page Language="C#" AutoEventWireup="true" Title="Asset Movement" CodeBehind="Asset Movement.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Asset_Movement" %>

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
                    <h3 style="color: #a35050;">Asset(s) Movement</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Requisition?');" href="/Asset Movement?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Requisition</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Movement?v=0" onclick="return confirm('Are you sure you want to create a new Requisition?');" runat="server" id="newApplications">
                                <div class="panel-footer">
                                    <span class="pull-left">create new requisition</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Asset Movement?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Requisitions</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Movement?v=1" runat="server" id="A1">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Asset Movement?v=2"></a>
                                        <%-- <i class="fa fa-check-square-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="Approvedcount">0</asp:Label>
                                        </div>
                                        <div>Approved Requisition(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Movement?v=2" runat="server" id="A3">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-bars fa-3x" style="color: #8A6D3B" href="/Asset Movement?v=3"></a>
                                        <%--<i class="fa fa-times-circle-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="recomendationsCount">0</asp:Label>
                                        </div>
                                        <div>Posted Requisition(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Movement?v=3" runat="server" id="A4">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Asset Movement?v=4"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Movement?v=4" runat="server" id="A2">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset Movement Header</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Requistion No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequisitionNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRequisitionNo"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                TargetControlID="RequiredFieldValidator1">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Document Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker3" class="input-append">
                                                <asp:TextBox runat="server" ID="txtDocumentDate" Enabled="false" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDocumentDate"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="header">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                    TargetControlID="RequiredFieldValidator2">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            User ID:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequesterdID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRequesterdID"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                TargetControlID="RequiredFieldValidator3">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Responsibility Centre:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtResCentre" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtResCentre"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                TargetControlID="RequiredFieldValidator4">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Store:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlStore" DataValueField="Code" DataTextField="Name" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="" ControlToValidate="ddlStore"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                TargetControlID="RequiredFieldValidator5">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Status:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtStatus" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtStatus"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                TargetControlID="RequiredFieldValidator8">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6" style="display: none;">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Recommender:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlRecommender" runat="server" DataValueField="UserID" DataTextField="Names" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Requisition Type:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" AutoPostBack="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                                <asp:ListItem Value="Issue">Issue</asp:ListItem>
                                                <asp:ListItem Value="Return">Return</asp:ListItem>
                                                <asp:ListItem Value="Transfer">Transfer</asp:ListItem>
                                                <%--<asp:ListItem Value="Exchange">Exchange</asp:ListItem>--%>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" InitialValue="" ControlToValidate="ddlStore"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                TargetControlID="RequiredFieldValidator7">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">My Assets Requisitions</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMyRequisition" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridMyRequisition_RowCommand"
                                            OnRowDataBound="gridMyRequisition_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Type" HeaderText="Requisition Type" />
                                                <asp:BoundField DataField="Document_Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="User_ID" HeaderText="User ID" />                             
                                                <asp:BoundField DataField="Store" HeaderText="Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Current Approver">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Requested Assets">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="View Comments">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>You have no requisitions(s).</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Approved" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;" id="lblApprovedcount" runat="server">Approved Store Requisitions List</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridApproved" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridApproved_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Type" HeaderText="Requisition Type" />
                                                <asp:BoundField DataField="Document_Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="User_ID" HeaderText="User ID" />
                                                <asp:BoundField DataField="Store" HeaderText="Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Requested Assets">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="View Comments">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>No Approved Assets Requisition Available.</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="recommend" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;" id="lblPostedCount" runat="server">Posted Store Requisitions List</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdPostedAssetsRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="grdPostedAssetsRequests_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Type" HeaderText="Requisition Type" />
                                                <asp:BoundField DataField="Document_Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="User_ID" HeaderText="User ID" />
                                                <asp:BoundField DataField="Store" HeaderText="Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Requested Assets">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>No Issued/Transfered/Returned/Exchanged Assets Requests Available.</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: none;">
                            <strong style="color: #8C1C03;">Asset Movement Requisitions For Recommendation</strong>
                            <hr />
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridRecommendation" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridRecommendation_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewRecomForm" runat="server" ForeColor="#A66D03" Text="Recommendation Form" CommandName="ViewApplication"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewRecomForm_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Line_No" HeaderText="Line_No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                            <asp:BoundField DataField="Document_No" HeaderText="Document_No" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Sender_ID" HeaderText="Sender ID" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Date_Time_Sent_for_Approval" HeaderText="Date sent for Approval" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Approval Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>You have no Asset Movement Request(s) for recommedation.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Approvals" runat="server">
                        <strong style="color: #8C1C03;">Asset Movement Approval Request(s)</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvApprovalls" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvApprovalls_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#A66D03" Text="Approval Form" CommandName="ViewApplication"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewApp_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Entry_No" HeaderText="Entry_No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                            <asp:BoundField DataField="Document_No" HeaderText="Document_No" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Sender_ID" HeaderText="Sender ID" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Date_Time_Sent_for_Approval" HeaderText="Date sent for Approval" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>You have no Store requisition awaiting your approval.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="ViewDetails" runat="server">
                        <div class="form-horizontal">
                            <strong style="color: #8C1C03;">Asset Movement Requisition Details:</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridAssetReqHeader" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridAssetReqHeader_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Type" HeaderText="Requisition Type" />
                                                <asp:BoundField DataField="Document_Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="User_ID" HeaderText="User ID" />
                                                <asp:BoundField DataField="Store" HeaderText="Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Asset List">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>Purchase Requisition Header not found!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <hr />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7">
                                                <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Approve" OnClientClick="return confirm('Are you certain you want to Approve this request?');" />
                                                <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-warning btn-sm"
                                                    Text="Reject" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this request?');" />
                                                <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" CssClass="btn btn-default btn-sm"
                                                    Text="Close" CausesValidation="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                    </asp:View>
                </asp:MultiView>
                <asp:MultiView ID="MultiViewLines" runat="server">
                    <asp:View ID="Issue" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset(s) Requisition Form</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Asset Description:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlAssetIssue" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="" ControlToValidate="ddlAssetIssue"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="issue">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                TargetControlID="RequiredFieldValidator9">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Remarks:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtRemarksIssue" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" style="display: none;">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Responsible Staff:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlEmpListIssue" Enabled="false" runat="server" DataValueField="No" DataTextField="Full_Name" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddAssetIssue" ValidationGroup="issue" OnClick="btnAddAssetIssue_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="Add Asset" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
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
                                                <asp:BoundField DataField="Responsible_Employee_Code" HeaderText="Responsible Staff Code"
                                                    SortExpression="Responsible_Employee_Code" />
                                                <asp:BoundField DataField="Employee_Name" HeaderText="Responsible Staff Name"
                                                    SortExpression="Employee_Name" />
                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                    SortExpression="Remarks" />
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
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
                    </asp:View>
                    <asp:View ID="Return" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset(s) Return Form</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Asset Description:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlAssetReturn" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" InitialValue="" ControlToValidate="ddlAssetReturn"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="return">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                                TargetControlID="RequiredFieldValidator11">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Remarks:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtCommentsReturn" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" style="display: none;">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Responsible Staff:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlEmpListReturn" runat="server" DataValueField="No" DataTextField="Full_Name" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddAssetReturn" ValidationGroup="return" OnClick="btnAddAssetReturn_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="Add Asset" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
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
                                          <%--      <asp:BoundField DataField="Responsible_Employee_Code" HeaderText="Responsible Staff Code"
                                                    SortExpression="Responsible_Employee_Code" />
                                                <asp:BoundField DataField="Employee_Name" HeaderText="Responsible Staff Name"
                                                    SortExpression="Employee_Name" />--%>
                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                    SortExpression="Remarks" />
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
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
                    </asp:View>
                    <asp:View ID="Transfer" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset(s) Transfer Form</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Asset Description:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlAssetTransfer" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="" ControlToValidate="ddlAssetTransfer"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="transfer">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                                TargetControlID="RequiredFieldValidator13">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Receiving Officer:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlEmpListTransfer" runat="server" DataValueField="No" DataTextField="Full_Name" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" InitialValue="" ControlToValidate="ddlEmpListTransfer"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="transfer">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                                TargetControlID="RequiredFieldValidator14">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Remarks:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtCommentsTransfer" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding-top: 32px;">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddAssetTransfer" ValidationGroup="transfer" OnClick="btnAddAssetTransfer_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="Add Asset" />
                                        </div>
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
                                                <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                    SortExpression="Asset_No" />
                                                <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                    SortExpression="Asset_Description" />
                                                <asp:BoundField DataField="New_Responsible_Employee_Code" HeaderText="New Responsible Staff Code"
                                                    SortExpression="New_Responsible_Employee_Code" />
                                                <asp:BoundField DataField="New_Employee_Name" HeaderText="Receiving Officer"
                                                    SortExpression="New_Employee_Name" />
                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                    SortExpression="Remarks" />
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
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
                    </asp:View>
                    <asp:View ID="Exchange" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset(s) Exchange Form</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Asset Description:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlAssetExchange" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" InitialValue="" ControlToValidate="ddlAssetExchange"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="exchange">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                                TargetControlID="RequiredFieldValidator15">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            New Responsible Staff:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlEmpListExchange" runat="server" DataValueField="No" DataTextField="Full_Name" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" InitialValue="" ControlToValidate="ddlEmpListExchange"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="exchange">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender16"
                                                TargetControlID="RequiredFieldValidator16">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Remarks:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtCommentsExchange" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding-top: 32px;">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddAssetExchange" ValidationGroup="exchange" OnClick="btnAddAssetExchange_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="Add Asset" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdAssetExchangeList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetExchangeList_RowDataBound"
                                            OnRowCommand="grdAssetExchangeList_RowCommand">
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
                                               <%-- <asp:BoundField DataField="New_Responsible_Employee_Code" HeaderText="New Responsible Staff Code"
                                                    SortExpression="New_Responsible_Employee_Code" />
                                                <asp:BoundField DataField="New_Employee_Name" HeaderText="New Responsible Staff Name"
                                                    SortExpression="New_Employee_Name" />--%>
                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                    SortExpression="Remarks" />
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
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
                    </asp:View>
                </asp:MultiView>
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-12 col-md-offset-9">
                                <asp:Button runat="server" ID="btnsubmitRequest" Visible="false" OnClick="btnsubmitRequest_Click" ValidationGroup="header" CssClass="btn btn-info btn-sm"
                                    Text="Send For Approval" />
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('[id *=ddlAssetIssue]').select2();
            $('[id *=ddlAssetReturn]').select2();
            $('[id *=ddlEmpListReturn]').select2();
            $('[id *=ddlEmpListIssue]').select2();
            $('[id *=ddlAssetTransfer]').select2();
            $('[id *=ddlEmpListTransfer]').select2();
            $('[id *=ddlAssetExchange]').select2();
            $('[id *=ddlEmpListExchange]').select2();
        });
    </script>
</asp:Content>
