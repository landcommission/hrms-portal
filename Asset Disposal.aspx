<%@ Page Language="C#" AutoEventWireup="true" Title="Asset Disposal" CodeBehind="Asset Disposal.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Asset_Disposal" %>

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
                    <h3 style="color: #a35050;">Asset Disposal</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Requisition?');" href="/Asset Disposal?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Requisition</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Disposal?v=0" onclick="return confirm('Are you sure you want to create a new disposal requisition?');" runat="server" id="newApplications">
                                <div class="panel-footer">
                                    <span class="pull-left">create new requisition</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Asset Disposal?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Pending Approval</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Disposal?v=1" runat="server" id="A1">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Asset Disposal?v=2"></a>
                                        <%-- <i class="fa fa-check-square-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="Approvalscount">0</asp:Label>
                                        </div>
                                        <div>Approvals</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Disposal?v=2" runat="server" id="A3">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Asset Disposal?v=3"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Disposal?v=4" runat="server" id="A2">
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
                            <strong style="color: #8C1C03;">Asset Disposal Form</strong>
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
                                            Employee No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtEmployeeNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmployeeNo"
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
                                            Disposal Year:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlDisposalYear" DataValueField="Code" DataTextField="Description" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="" ControlToValidate="ddlDisposalYear"
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
                                            <asp:TextBox runat="server" ID="txtStatus" Text="Open" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-horizontal">
                                <hr />
                                <strong style="color: #8C1C03;">Asset List</strong>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-12" style="text-align: left;">
                                                Asset Description:</label>
                                            <div class="col-md-12">
                                                <asp:DropDownList ID="ddlAssets" runat="server" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true">
                                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" InitialValue="" ControlToValidate="ddlAssets"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="lines">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                    TargetControlID="RequiredFieldValidator6">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-12" style="text-align: left;">
                                                Reason for Disposal:</label>
                                            <div class="col-md-12">
                                                <asp:TextBox runat="server" ID="txtReasonfordisposal" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <asp:Button runat="server" ID="btnAddAsset" ValidationGroup="lines" OnClick="btnAddAsset_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                    Text="Add Asset" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="grdAssetList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetList_RowDataBound"
                                                OnRowCommand="grdAssetList_RowCommand">
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
                            <hr />
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12 col-md-offset-8">
                                            <asp:Button runat="server" ID="btnsubmitRequest" OnClick="btnsubmitRequest_Click" ValidationGroup="header" CssClass="btn btn-info btn-sm"
                                                Text="Send For Approval" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">My Store Requisitions</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMyDisposalRequisition" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridMyDisposalRequisition_RowCommand"
                                            OnRowDataBound="gridMyDisposalRequisition_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="Disposal_Year" HeaderText="Disposal Year" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Current Approver">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Asset List">
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
                                            <EmptyDataTemplate>You have no Store requisitions(s).</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">My Disposal Requests</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridApprovals" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridApprovals_RowCommand"
                                            OnRowDataBound="gridApprovals_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="Disposal_Year" HeaderText="Disposal Year" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="Asset Disposal List">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="Approval Trail">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="Approval Comments">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>You have no Store requisitions(s).</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Approvals" runat="server">
                        <strong style="color: #8C1C03;">Disposal Requisitions For Approval</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvApprovalls" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
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
                            <strong style="color: #8C1C03;">Store Requisition:</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridDispRequest" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridDispRequest_RowCommand">
                                            <Columns>
                                                 <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Document Date" />
                                                <asp:BoundField DataField="Disposal_Year" HeaderText="Disposal Year" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="Asset Disposal List">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>No Disposal Request found!</EmptyDataTemplate>
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
                                                    Text="Approve/Recommend" OnClientClick="return confirm('Are you certain you want to Approve/Recommend this request?');" />
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
            </div>
        </div>
    </div>
</asp:Content>
