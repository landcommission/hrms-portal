<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Separation.aspx.cs" Title="Separation" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Separation" %>

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
                    <h3 style="color: #a35050;">Employee Seperation</h3>
                </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <a class="fa fa-plus-circle fa-3x" style="color:#FFF" href="/Separation.aspx?v=0" onclick="return confirm('Are you sure you want to create a new Separation Request?');"></a>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">
                                                <label style="visibility: hidden;">0</label>
                                            </div>
                                            <div>New Request</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/Separation.aspx?v=0" runat="server" id="newApplications" onclick="return confirm('Are you sure you want to create a new Separation Request?');">
                                    <div class="panel-footer">
                                        <span class="pull-left">Click here to create request</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix">
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <a class="fa fa-tasks fa-3x" style="color:#31708F" href="/Separation.aspx?v=1"></a>
                                            <%--<i class="fa fa-tasks fa-3x"></i>--%>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">
                                                <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                            </div>
                                            <div>Separation Requests</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/Separation.aspx?v=1" runat="server" id="A1">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix">
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-2">
                                            <a class="fa fa-database fa-3x" style="color:#333333" href="/Separation.aspx?v=2"></a>
                                           <%-- <i class="fa fa-database fa-3x"></i>--%>
                                        </div>
                                        <div class="col-xs-10 text-right">
                                            <div class="huge">
                                                <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                            </div>
                                            <div>Separation approval requests</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/Separation.aspx?v=2" runat="server" id="A2">
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
                                            <h3 style="color: #a35050;">New Employee Request Form</h3>
                                        </div>
                                        <div class="form-horizontal">
                                            <div class="awidget-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Requisition No:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="lblDocNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Responsibility Center:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="ddlResponsibilityCenter" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Date of leaving Service:</label>
                                                            <div class="col-md-8">
                                                                <div id="datetimepicker1" class="input-append">
                                                                    <asp:TextBox runat="server" ID="dpDateOfLeaving" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Designation:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="ddlJob" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Reason for Separation:</label>
                                                            <div class="col-md-8">
                                                                <asp:DropDownList ID="ddlReasonRequest" runat="server" CssClass="form-control input-sm"
                                                                    AppendDataBoundItems="true">
                                                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                                                    <asp:ListItem Value="1">Resignation</asp:ListItem>
                                                                    <asp:ListItem Value="3">Retirement</asp:ListItem>
                                                                    <asp:ListItem Value="5">Sickness</asp:ListItem>
                                                                    <asp:ListItem Value="5">Other</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Others (Specify)/Comments:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="txtDetails" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
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
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <div class="col-md-12 col-md-offset-4">
                                                                <asp:Button runat="server" ID="btnsubmit" OnClick="btnsubmit_Click" CssClass="btn btn-info btn-sm"
                                                                    Text="Send For Approval" />
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
                            <strong style="color: #8C1C03;">My Separation Requests</strong>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMySeperationRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="Separation_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridMySeperationRequests_RowDataBound" OnRowCommand="gridMySeperationRequests_RowCommand">
                                            <Columns>
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png"></asp:ButtonField>    
                                                <asp:BoundField DataField="Separation_No" HeaderText="Document No." />
                                                <asp:BoundField DataField="Reason_for_Separation" HeaderText="Reason for Separation" />
                                                <asp:BoundField DataField="Date_of_Leaving" HeaderText="Date of Leaving Service" DataFormatString="{0:d}" />
                                                <asp:TemplateField HeaderText="Current Approver">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                                            <EmptyDataTemplate>No Training Applications found!</EmptyDataTemplate>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="TrainingRequests" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <strong style="color: #8C1C03;">Separation requests for my approval</strong>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvRequisitionApprovals" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvRequisitionApprovals_RowCommand">
                                            <Columns>
                                                <asp:ButtonField CommandName="btnView" Text="View Request" ControlStyle-ForeColor="#A66D03" ButtonType="Link"></asp:ButtonField>
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
                        <asp:View ID="View4" runat="server">
                            <strong style="color: #8C1C03;">Seperation Request Details :</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridSeperationView" runat="server" AutoGenerateColumns="False" DataKeyNames="Separation_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                            <Columns>
                                                <asp:BoundField DataField="Separation_No" HeaderText="Document No." />
                                                <asp:BoundField DataField="Staff_Code" HeaderText="No" SortExpression="Staff Code" ReadOnly="True" />
                                                <asp:BoundField DataField="Staff_Name" HeaderText="Staff Name." />
                                                <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center." />
                                                <asp:BoundField DataField="Department" HeaderText="Department." />
                                                <asp:BoundField DataField="Reason_for_Separation" HeaderText="Reason for Separation" />
                                                <asp:BoundField DataField="Date_of_Leaving" HeaderText="Date of Leaving Service" DataFormatString="{0:d}" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" />
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>Seperation details not available at the moment!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="float: right">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:LinkButton ID="lbApproverAttachments" runat="server" Text="View Attachments"
                                            OnClick="lbApproverAttachments_Click" />
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row" id="ApprovalActions" runat="server">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Approver Comments:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-7">
                                            <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" CssClass="btn btn-success btn-sm"
                                                Text="Approve Request" OnClientClick="return confirm('Are you certain you want to Approve this request?');" />
                                            <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-warning btn-sm"
                                                Text="Reject Request" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this request?');" />
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
