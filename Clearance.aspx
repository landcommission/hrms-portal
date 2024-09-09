<%@ Page Language="C#" AutoEventWireup="true" Title="Clearance" MasterPageFile="~/Site.Master" CodeBehind="Clearance.aspx.cs" Inherits="NLC_HRMS_PORTAL.Clearance" %>

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
                    <h3 style="color: #a35050;">Clearance</h3>
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <a class="fa fa-tasks fa-3x" style="color: #FFF" href="/Clearance.aspx?v=0"></a>
                                                <%-- <i class="fa fa-tasks fa-3x"></i>--%>
                                            </div>
                                            <div class="col-xs-10 text-right">
                                                <div class="huge">
                                                    <asp:Label runat="server" ID="pendingCount">0</asp:Label>
                                                </div>
                                                <div>Pending Request(s)</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/Clearance.aspx?v=0" runat="server" id="newApplications">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Clearance.aspx?v=1"></a>
                                            </div>
                                            <div class="col-xs-10 text-right">
                                                <div class="huge">
                                                    <asp:Label runat="server" ID="approvedCount">0</asp:Label>
                                                </div>
                                                <div>Approved Request(s)</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/Clearance.aspx?v=1" runat="server" id="A1">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="panel panel-warning">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <a class="fa fa-times-circle-o fa-3x" style="color: #3C763D" href="/Clearance.aspx?v=2"></a>
                                            </div>
                                            <div class="col-xs-10 text-right">
                                                <div class="huge">
                                                    <asp:Label runat="server" ID="pendingIssuesCount">0</asp:Label>
                                                </div>
                                                <div>Pending With Issues</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/Clearance.aspx?v=2" runat="server" id="A2">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix">
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <a class="fa fa-database fa-3x" style="color: #333333" href="/Clearance.aspx?v=3"></a>
                                            </div>
                                            <div class="col-xs-10 text-right">
                                                <div class="huge">
                                                    <asp:Label runat="server" ID="approvalCount">0</asp:Label>
                                                </div>
                                                <div>Approval Request(s)</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/Clearance.aspx?v=3" runat="server" id="A3">
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">My pending Clearance List</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="table-responsive">
                                                                <asp:GridView ID="gridMyPendingClearanceList" runat="server" AutoGenerateColumns="False" DataKeyNames="Clearance_No"
                                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridMyPendingClearanceList_RowDataBound">
                                                                    <Columns>
                                                                        <asp:BoundField DataField="Clearance_No" HeaderText="Clearance No" SortExpression="Clearance_No" />
                                                                        <asp:BoundField DataField="Separation_No" HeaderText="Separation No." />
                                                                        <asp:BoundField DataField="Name" HeaderText="Name." />
                                                                        <asp:BoundField DataField="Gender" HeaderText="Gender." />
                                                                        <asp:BoundField DataField="Grade" HeaderText="Grade." />
                                                                        <asp:BoundField DataField="Designation" HeaderText="Designation." />
                                                                        <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center." />
                                                                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" />
                                                                        <asp:TemplateField HeaderText="Current Approver">
                                                                            <ItemTemplate>
                                                                                <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" />
                                                                    </Columns>
                                                                    <PagerStyle CssClass="bs-pagination" />
                                                                    <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                    <EmptyDataTemplate>No Pending Clearance List found!</EmptyDataTemplate>
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">My Approved Clearance List</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="table-responsive">
                                                                <asp:GridView ID="gridMyApprovedClearanceList" runat="server" AutoGenerateColumns="False" DataKeyNames="Clearance_No"
                                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                    OnRowCommand="gridMyApprovedClearanceList_RowCommand">
                                                                    <Columns>
                                                                        <asp:BoundField DataField="Clearance_No" HeaderText="Clearance No" SortExpression="Clearance_No" />
                                                                        <asp:BoundField DataField="Separation_No" HeaderText="Separation No." />
                                                                        <asp:BoundField DataField="Name" HeaderText="Name." />
                                                                        <asp:BoundField DataField="Gender" HeaderText="Gender." />
                                                                        <asp:BoundField DataField="Grade" HeaderText="Grade." />
                                                                        <asp:BoundField DataField="Designation" HeaderText="Designation." />
                                                                        <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center." />
                                                                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" />
                                                                        <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" />
                                                                        <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail"></asp:ButtonField>
                                                                        <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="View Comments"></asp:ButtonField>
                                                                    </Columns>
                                                                    <PagerStyle CssClass="bs-pagination" />
                                                                    <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                    <EmptyDataTemplate>No Approved Clearance List found!</EmptyDataTemplate>
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <strong style="color: #8C1C03;">Clearance requests with issues</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gridPendingIssues" runat="server" AutoGenerateColumns="False" DataKeyNames="Clearance_No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                OnRowCommand="gridPendingIssues_RowCommand">
                                                <Columns>
                                                    <asp:BoundField DataField="Clearance_No" HeaderText="Clearance No" SortExpression="Clearance_No" />
                                                    <asp:BoundField DataField="Separation_No" HeaderText="Separation No." />
                                                    <asp:BoundField DataField="Name" HeaderText="Name." />
                                                    <asp:BoundField DataField="Gender" HeaderText="Gender." />
                                                    <asp:BoundField DataField="Grade" HeaderText="Grade." />
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation." />
                                                    <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center." />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="Clearance_Status" HeaderText="Status" ReadOnly="True" />
                                                    <asp:ButtonField CommandName="BTNRESPOND" ControlStyle-ForeColor="#A66D03" Text="Respond Back"></asp:ButtonField>
                                                    <asp:BoundField DataField="Comments_Finance" HeaderText="Comments Finance" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="Comments_HR" HeaderText="Comments HR" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="Comments_ICT" HeaderText="Comments HR" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="Comments_NLIMS" HeaderText="Comments NLIMS" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="CLMB" HeaderText="Comments CLMB" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="LAdm" HeaderText="Comments Land Admin" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                    <asp:BoundField DataField="Research__Advocacy" HeaderText="Comments Research Advocacy" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" ReadOnly="True" />
                                                </Columns>
                                                <PagerStyle CssClass="bs-pagination" />
                                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                <EmptyDataTemplate>No Clearance List found!</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <strong style="color: #8C1C03;">Clearance requests for my approval</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvClearanceApprovals" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvClearanceApprovals_RowCommand">
                                                <Columns>
                                                    <asp:ButtonField CommandName="btnView" Text="view clearance form" ButtonType="Link"></asp:ButtonField>
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
                                                <EmptyDataTemplate>No Applications found.</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="Respond" runat="server">
                                <strong style="color: #8C1C03;">Response form</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                Approver Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtIssuesComm" Enabled="false" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">
                                                Approver:</label>
                                            <div class="col-md-8">
                                                <asp:Label runat="server" ID="txtCurrrentApprover" CssClass="control-label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtResponse" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                File Upload:</label>
                                            <div class="col-md-8">
                                                <asp:FileUpload ID="fuImage" CssClass="form-control" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Button runat="server" ID="btnRespondtoIssues" OnClick="btnRespondtoIssues_Click" CssClass="btn btn-info btn-sm"
                                            Text="Submit Response" />
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="SubmittedResponses" runat="server">
                                <strong style="color: #8C1C03;">Responses</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                Comments:</label>
                                            <div class="col-md-8">
                                                <asp:Label runat="server" ID="TextBox1" CssClass="form-control input-sm"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label col-md-4" id="supportingDoc" runat="server">
                                                Supporting Documents:</label>
                                            <div class="col-md-8">
                                                <asp:LinkButton ID="lnAttachments" runat="server" CausesValidation="false" Text="View Documents"
                                                    OnClick="lnAttachments_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtResponseComm" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtResponseComm"
                                                    SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="RevertResponse">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                    TargetControlID="RequiredFieldValidator2">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-12 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnAcceptResponse" OnClick="btnAcceptResponse_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Accept Response" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                <asp:Button runat="server" ValidationGroup="RevertResponse" ID="btnRejectResponse" OnClick="btnRejectResponse_Click" CssClass="btn btn-warning btn-sm"
                                                    Text="Send Back" OnClientClick="return confirm('Are you certain you want to send back to the applicant?');" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="FA" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Finance</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Salary Advance:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbSalaryAdvance" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Working Tools:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbWorkingTools" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Imprest:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbImprest" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Office & Desk Keys:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbOfficeDeskKeys" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Petty Cash:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbPettyCash" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Car Keys:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbCarKeys" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Car Loan:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbCarLoan" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Mortgage:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbMortgage" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Finance:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsFinance" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCommentsFinance"
                                                                        SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                        ValidationGroup="ReverFA">
                                                                    </asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                                        TargetControlID="RequiredFieldValidator1">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnApproveFAClearance" OnClick="btnApproveFAClearance_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                    <asp:Button runat="server" ValidationGroup="ReverFA" ID="btnFARevert" OnClick="btnFARevert_Click" CssClass="btn btn-warning btn-sm"
                                                                        Text="Send Back" OnClientClick="return confirm('Are you certain you want to send back to the applicant?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="HRM" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Human Resource</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    NLC ID Card:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbNLCIDCard" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Leave Balance:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbLeaveBalance" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Medical Card:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbMedicalCard" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Others (Specify):</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbOthersHR" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Human Resource:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsHR" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnApproveHRMClearance" OnClick="btnApproveHRMClearance_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="ICT" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance ICT</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Computer:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="chbComputerICT" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Mobile Phone:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="chbMobilePhone" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Laptop:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="chbLaptop" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    ICT & Security Clearance:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="chbICTSecurity" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    IPAD/Tablet:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="chbIPADTablet" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by ICT:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtICTComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6"></div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnApproveICTClearance" OnClick="btnApproveICTClearance_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="CLMB" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance CLMB Coordination Office</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Working Tools:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbWorkingToolsCLMB" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Office and Desk Keys:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbIOfficeDeskKeys" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by CLMB:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsCLMB" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceCLMB" OnClick="btnClearanceCLMB_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="SCM" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Supply Chain Management</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Store:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbStore" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Supply Chain Management:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsSupplyChain" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceSupplyChain" OnClick="btnClearanceSupplyChain_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="CAAD" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Communication</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Library:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cbLibrary" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Communication:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsCommunication" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceComm" OnClick="btnClearanceComm_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="NLIMS" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance NLIMS</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    NLIMS Cleared:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cnNLIMS" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by NLIMS:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsNLIMS" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceNLIMS" OnClick="btnClearanceNLIMS_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="LAE" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Legal Affairs & Enforcement</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Legal Cleared:</label>
                                                                <div class="col-md-8">
                                                                    <asp:CheckBox ID="cnLegal" runat="server" CssClass="form-control input-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Legal Affairs:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsLegal" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceLegal" OnClick="btnClearanceLegal_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="LAD" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Land Administration</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Land Administration:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsLandAdministration" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceLandAdmin" OnClick="btnClearanceLandAdmin_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="RES" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Research & Advocacy</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Research & Advocacy:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsResearchAdvocacy" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceReseanceAdvocacy" OnClick="btnClearanceReseanceAdvocacy_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="NRS" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Natural Resource</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Natural Resource:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsNaturalResource" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceNaturalResource" OnClick="btnClearanceNaturalResource_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="VALT" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Valuation & Taxation</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Valuation Taxation:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsValuationTaxation" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceValuation" OnClick="btnClearanceValuation_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="SLAS" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Survey Adjudication & Settlement</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Survey Adjudication & Settlement:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsSurveyAdjudication" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceSurveyAdj" OnClick="btnClearanceSurveyAdj_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="RIA" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="awidget full-width">
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Clearance Audit & Risk Management</h3>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="awidget-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-4">
                                                                    Comments by Audit:</label>
                                                                <div class="col-md-8">
                                                                    <asp:TextBox runat="server" ID="txtCommentsAudit" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="col-md-12 col-md-offset-4">
                                                                    <asp:Button runat="server" ID="btnClearanceRiskAudit" OnClick="btnClearanceRiskAudit_Click" CssClass="btn btn-info btn-sm"
                                                                        Text="Approve Clearance Request" OnClientClick="return confirm('Are you certain you want to approve this clearance request?');" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
