<%@ Page Language="C#" AutoEventWireup="true" Title="Training Back To Office" CodeBehind="TrainingBackToOffice.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.TrainingBackToOffice" %>

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
                    <h3 style="color: #a35050;">Training Back To Office</h3>
                </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                          <a class="fa fa-plus-circle fa-3x" style="color:#FFF" href="/TrainingBackToOffice.aspx?v=0"></a>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">
                                                <label style="visibility: hidden;">0</label>
                                            </div>
                                            <div>New Return Entry</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/TrainingBackToOffice.aspx?v=0" runat="server" id="newApplications">
                                    <div class="panel-footer">
                                        <span class="pull-left">Click here to create a return entry</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
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
                                           <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/TrainingBackToOffice.aspx?v=2"></a>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">
                                                <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                            </div>
                                            <div>My Training Back To Office Reports</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/TrainingBackToOffice.aspx?v=2" runat="server" id="A1">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix">
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4" style="display:none;">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-2">
                                            <i class="fa fa-tasks fa-3x"></i>
                                        </div>
                                        <div class="col-xs-10 text-right">
                                            <div class="huge">
                                                <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                            </div>
                                            <div>Training Back To Office Approvals</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/TrainingBackToOffice.aspx?v=3" runat="server" id="A2">
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
                                <strong style="color: #8C1C03;">My Training Requests for Back To Office Returns</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvMyApprovedTrainingRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="Application No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvTrainingApprovals_RowCommand">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnViewReturnEntry" runat="server" ForeColor="#8C1C03" Text="Return Report" CommandName="ViewReturnEntry"
                                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewReturnEntry_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Entry No" HeaderText="No" SortExpression="Entry No" Visible="false"
                                                        InsertVisible="False" ReadOnly="True" />
                                                    <asp:BoundField DataField="Employee No_" HeaderText="Employee No" SortExpression="Employee No_"
                                                        Visible="False" />
                                                    <asp:BoundField DataField="Course Title" HeaderText="Course Code" />
                                                    <asp:BoundField DataField="Application No" HeaderText="Document No." />
                                                    <asp:BoundField DataField="Course Description" HeaderText="Description" />
                                                    <asp:BoundField DataField="Start Date" DataFormatString="{0:d}" HeaderText="Start Date" />
                                                    <asp:BoundField DataField="End Date" HeaderText="End Date" DataFormatString="{0:d}" />
                                                    <asp:TemplateField HeaderText="Current Approver" Visible="false">
                                                        <ItemStyle Width="220px" />
                                                        <ItemTemplate>
                                                            <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Status Description" HeaderText="Status" ReadOnly="True" />
                                                </Columns>
                                                <PagerStyle CssClass="bs-pagination" />
                                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                <EmptyDataTemplate>No Training Applications found!</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="EntryForm" runat="server">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="awidget full-width">
                                        <div class="awidget-head">
                                            <h3 style="color: #a35050;">Training - Back To Office Return Form</h3>
                                        </div>
                                        <div class="form-horizontal">
                                            <div class="awidget-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Original Training Document No:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="lblDocNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Course Name:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="lblCourseName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                Start Date:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="dpTrainingStartDate" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">
                                                                End Date:</label>
                                                            <div class="col-md-8">
                                                                <asp:TextBox runat="server" ID="dpTrainingEndDate" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="awidget-head">
                                                    <h3 style="color: #a35050;">Return to office quiz</h3>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">
                                                                1. Please state how the course has benefited you and the organization</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt1" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                                    TargetControlID="RequiredFieldValidator1">
                                                                </asp:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">
                                                                2. Which specific areas do you think need improvement in your area of operation?</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt2" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
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
                                                            <label class="control-label col-md-6">
                                                                3. How will you use the skills acquired to address the problem?</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt3" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt3"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                                    TargetControlID="RequiredFieldValidator3">
                                                                </asp:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">
                                                                4. Provide timeline within which you will cascade the skills learned to others in your Department/organization</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt4" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt4"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
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
                                                            <label class="control-label col-md-6">
                                                                5. What skills did you acquire from the training attended:</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt5" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt5"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                                    TargetControlID="RequiredFieldValidator5">
                                                                </asp:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">
                                                                6. Target Group that can benefit from the skills acquired</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txt6" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt6"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                                    TargetControlID="RequiredFieldValidator6">
                                                                </asp:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">
                                                                 Any other comment/Recommendations:</label>
                                                            <div class="col-md-6">
                                                                <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtComments"
                                                                    SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="quiz">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                                    TargetControlID="RequiredFieldValidator7">
                                                                </asp:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <div class="col-md-12 col-md-offset-6">
                                                                <asp:Button runat="server" ID="btnSubmitReview" OnClick="btnSubmitReview_Click" ValidationGroup="quiz" CssClass="btn btn-info btn-sm"
                                                                    Text="Submit For Review" />
                                                                <asp:Button runat="server" ID="btnCancel" OnClick="btnCancel_Click" CssClass="btn btn-warning btn-sm"
                                                                    Text="Cancel" />
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
                        <asp:View ID="EntryList" runat="server">
                            <div class="form-horizontal">
                                <strong style="color: #8C1C03;">My Training Requests for Back To Office Returns</strong>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvBackToOfficeEntries" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvBackToOfficeEntries_RowCommand"
                                                OnRowDataBound="gvBackToOfficeEntries_RowDataBound">
                                                <Columns>
                                                    <asp:ButtonField CommandName="btnView" Text="View" Visible="false">
                                                        <ItemStyle Width="40px" />
                                                    </asp:ButtonField>
                                                    <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                        <ItemStyle Width="60px" />
                                                    </asp:ButtonField>
                                                    <asp:BoundField DataField="Entry No" HeaderText="No" Visible="false" InsertVisible="False"
                                                        ReadOnly="True" />
                                                    <asp:BoundField DataField="Document No" HeaderText="Document No." />
                                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                                    <asp:BoundField DataField="Start Date" HeaderText="Start Date" ReadOnly="True" />
                                                    <asp:BoundField DataField="End Date" HeaderText="End Date" ReadOnly="True" />
                                                    <asp:BoundField DataField="Status Description" HeaderText="Status" ReadOnly="True" />
                                                    <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ButtonType="Link" Visible="false" Text="View Comments">
                                                        <ItemStyle Width="60px" />
                                                    </asp:ButtonField>
                                                </Columns>
                                                <PagerStyle CssClass="bs-pagination" />
                                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                <EmptyDataTemplate>No Back To Office entries found!</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="TrainingBTO_ForApprovals" runat="server">
                            <strong style="color: #8C1C03;">Training Back-To-Office submissions for my review</strong>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvTrainingApprovals" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvTrainingApprovals_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#8C1C03" Text="View Submission" CommandName="ViewApplication"
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
                                            <EmptyDataTemplate>No Training Applications found!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="ViewApplicationDetails" runat="server">
                            <strong style="color: #8C1C03;">Training Back-To-Office submissions Details :</strong>
                            <div class="row">
                                <asp:Literal runat="server" ID="litViewTraining"></asp:Literal>
                            </div>
                            <hr />
                            <div class="row" id="ApprovalActions" runat="server">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Approver Comments:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtApproverComment"
                                                SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="approve">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                TargetControlID="RequiredFieldValidator8">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-7">
                                            <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" ValidationGroup="approve" CssClass="btn btn-success btn-sm"
                                                Text="Approve Request" OnClientClick="return confirm('Are you certain you want to Approve this application?');" />
                                            <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-warning btn-sm"
                                                Text="Reject Request" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this application?');" />
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
