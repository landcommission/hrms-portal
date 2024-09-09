<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Salary Advance.aspx.cs" MasterPageFile="~/Site.Master" Title="Salary Advance" Inherits="NLC_HRMS_PORTAL.Salary_Advance" %>

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
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Staff Salary Advance Applications</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 20%;">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Salary Advance request?');" href="/Salary Advance.aspx?v=Ne"></a>
                                        <%--<i class="fa fa-plus-circle fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Application</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Salary Advance.aspx?v=Ne" runat="server" id="newApplications" onclick="return confirm('Are you sure you want to create a new Salary Advance request?');">
                                <div class="panel-footer">
                                    <span class="pull-left">Click here to Apply</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%;">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Salary Advance.aspx?v=Pe"></a>
                                        <%--<i class="fa fa-tasks fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="pendingCount">0</asp:Label>
                                        </div>
                                        <div>Pending Approval</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Salary Advance.aspx?v=Pe" runat="server" id="A1">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%;">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Salary Advance.aspx?v=App"></a>
                                        <%--<i class="fa fa-check-square-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovedCount">0</asp:Label>
                                        </div>
                                        <div>Application(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Salary Advance.aspx?v=App" runat="server" id="A2">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%;">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-times-circle-o fa-3x" style="color: #8A6D3B" href="/Salary Advance.aspx?v=Rej"></a>
                                        <%--  <i class="fa fa-times-circle-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="rejectedCount">0</asp:Label>
                                        </div>
                                        <div>Rejected Application(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Salary Advance.aspx?v=Rej" runat="server" id="A3">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%;">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Salary Advance.aspx?v=Req"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="appRequestsCount">0</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Salary Advance.aspx?v=Req" runat="server" id="A4">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <hr />
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <!-- Page title -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="awidget full-width">
                                    <div class="awidget-head">
                                        <h3 style="color: #a35050;">New Salary Advance Application</h3>
                                    </div>
                                    <div class="form-horizontal">
                                        <div class="awidget-body">
                                            <div class="row">
                                                <div class="col-md-12 text-right">
                                                    <asp:Label runat="server" ID="lblApplyStatus" CssClass="label label-success" Font-Size="Small" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Application No:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtApplicationNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Requestor ID:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtRequestorID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                                            <asp:TextBox runat="server" ID="txtEmpNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Date:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtDate" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Employee Names:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtEmpName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Status:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtStatus" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Responsibility Centre:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtRescentre" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Eligible:</label>
                                                        <div class="col-md-8">
                                                            <asp:CheckBox ID="chkEligible" CssClass="form-control" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Designation:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtDesignation" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Payrol Deduction Month:</label>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlPayrolDeductionMonth" runat="server" DataValueField="Date_Opened" DataTextField="Date_Opened" CssClass="form-control input-sm"
                                                                AppendDataBoundItems="true">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPayrolDeductionMonth"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Apply">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                                TargetControlID="RequiredFieldValidator1">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Loan Type:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtLoanType" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Reason For Advance:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtReasons" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtReasons"
                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Apply">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                                TargetControlID="RequiredFieldValidator2">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Amount:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtAmount" CssClass="form-control input-sm"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAmount"
                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Apply">
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
                                                            Attachment(s):</label>
                                                        <div class="col-md-8">
                                                            <asp:LinkButton ID="lnAttachments" runat="server" CausesValidation="false" Text="View/Upload Attachments"
                                                                OnClick="lnAttachments_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6"></div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <div class="col-md-7 col-md-offset-4">
                                                            <asp:Button runat="server" ID="btnSubmitApplication" OnClick="btnSubmitApplication_Click" CssClass="btn btn-info btn-sm"
                                                                Text="Submit Application" ValidationGroup="Apply" />
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
                    <asp:View ID="View2" runat="server">
                        <strong style="color: #8C1C03;">Pending Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridpending" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridpending_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnCancelApp" runat="server" ForeColor="#8C1C03" Text="Cancel" CommandName="CancelApp"
                                                        OnClientClick="return confirm('Are you sure you want to Cancel this Application?');"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnCancelApp_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="No" HeaderText="No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_No" HeaderText="Employee No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_Names" HeaderText="Name"></asp:BoundField>
                                            <asp:BoundField DataField="Cashier" HeaderText="User ID"></asp:BoundField>
                                            <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center"></asp:BoundField>
                                            <asp:BoundField DataField="Date" HeaderText="Date Applied" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Payroll_Deduction_Month" HeaderText="Payroll Deduction Month" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Loan_Type" HeaderText="Loan Type"></asp:BoundField>
                                            <asp:BoundField DataField="Total_Net_Amount" HeaderText="Amount" DataFormatString="KES {0:N2}"></asp:BoundField>
                                            <asp:BoundField DataField="Reasons_for_Advance_Amount" HeaderText="Reasons for Advance Amount"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                            <asp:TemplateField HeaderText="Current Approver">
                                                <ItemTemplate>
                                                    <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Pending Applications Found!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <strong style="color: #8C1C03;">Approved Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridApproved" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridApproved_RowCommand">
                                        <Columns>
                                            <%--<asp:TemplateField HeaderText="">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnView" runat="server" ForeColor="#8C1C03" Text="View" CommandName="ViewApp"
                                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnView_Click"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                            <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" Text="View Approvals"></asp:ButtonField>
                                            <asp:ButtonField CommandName="BTNVIEWCOMMENTS" Text="View Comments"></asp:ButtonField>
                                            <asp:BoundField DataField="No" HeaderText="No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_No" HeaderText="Employee No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_Names" HeaderText="Name"></asp:BoundField>
                                            <asp:BoundField DataField="Cashier" HeaderText="User ID"></asp:BoundField>
                                            <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center"></asp:BoundField>
                                            <asp:BoundField DataField="Date" HeaderText="Date Applied" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Payroll_Deduction_Month" HeaderText="Payroll Deduction Month" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Loan_Type" HeaderText="Loan Type"></asp:BoundField>
                                            <asp:BoundField DataField="Total_Net_Amount" HeaderText="Amount" DataFormatString="KES {0:N2}"></asp:BoundField>
                                            <asp:BoundField DataField="Reasons_for_Advance_Amount" HeaderText="Reasons for Advance Amount"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Applications Found!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <strong style="color: #8C1C03;">Rejected Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridRejected" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridRejected_RowCommand">
                                        <Columns>
                                            <%--<asp:TemplateField HeaderText="">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnView" runat="server" ForeColor="#8C1C03" Text="View" CommandName="ViewApp"
                                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnView_Click"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                            <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="View Comments"></asp:ButtonField>
                                            <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail"></asp:ButtonField>
                                            <asp:BoundField DataField="No" HeaderText="No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_No" HeaderText="Employee No." ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Employee_Names" HeaderText="Name"></asp:BoundField>
                                            <asp:BoundField DataField="Cashier" HeaderText="User ID"></asp:BoundField>
                                            <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center"></asp:BoundField>
                                            <asp:BoundField DataField="Date" HeaderText="Date Applied" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Payroll_Deduction_Month" HeaderText="Payroll Deduction Month" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Loan_Type" HeaderText="Loan Type"></asp:BoundField>
                                            <asp:BoundField DataField="Total_Net_Amount" HeaderText="Amount" DataFormatString="KES {0:N2}"></asp:BoundField>
                                            <asp:BoundField DataField="Reasons_for_Advance_Amount" HeaderText="Reasons for Advance Amount"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Applications Found!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-2">
                                        Status:</label>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true" AutoPostBack="true">
                                            <asp:ListItem Value="Open" Text="Open"></asp:ListItem>
                                            <asp:ListItem Value="Canceled" Text="Canceled"></asp:ListItem>
                                            <asp:ListItem Value="Approved" Text="Approved"></asp:ListItem>
                                            <asp:ListItem Value="Rejected" Text="Rejected"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <strong id="approvalstext" runat="server" style="float: right; color: #8C1C03;">Salary Advance Requests For My Approval</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridApprovalRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnPreRender="gridApprovalRequests_PreRender">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnView" runat="server" ForeColor="#A66D03" Text="View" CommandName="View"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnView_Click"></asp:LinkButton>
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
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View6" runat="server">
                        <strong style="color: #8C1C03;">Salary Advary Request Details:</strong>
                        <div class="row">
                            <div class="form-group" style="padding-left: 30px;">
                                <asp:Literal runat="server" ID="litSalaryAdvance"></asp:Literal>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div id="ApprovalActions" runat="server">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Approver Comments:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <div class="col-md-10">
                                            <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" CssClass="btn btn-success btn-sm"
                                                Text="Approve Request" OnClientClick="return confirm('Are you certain you want to Approve this request?');" />
                                            <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-info btn-sm"
                                                Text="Reject Request" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this request?');" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" CssClass="btn btn-warning btn-sm"
                                        Text="Close" CausesValidation="false" />
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
    <script type="text/javascript">
        $('[id *=txtAmount]').on('keyup', function () {
            $(this).val(function (index, value) {
                return value.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            });
        });
    </script>
</asp:Content>
