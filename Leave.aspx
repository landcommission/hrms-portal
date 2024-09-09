<%@ Page Language="C#" Title="Leave" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Leave" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ Register Assembly="SlimeeLibrary" Namespace="SlimeeLibrary" TagPrefix="cc2" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">My Leave Applications</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Leave application?');" href="/Leave.aspx?v=0"></a>
                                        <%--<i class="fa fa-plus-circle fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <label runat="server" id="annualLeaveBalance">0</label>
                                        </div>
                                        <div>Annual Leave Balance</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Leave.aspx?v=0" runat="server" id="newApplications" onclick="return confirm('Are you sure you want to create a new Leave application?');">
                                <div class="panel-footer">
                                    <span class="pull-left">Click here to Apply</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
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
                                    <div class="col-xs-2">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Leave.aspx?v=1"></a>
                                        <%--  <i class="fa fa-tasks fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="pendingCount">0</asp:Label>
                                        </div>
                                        <div>Pending Approval</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Leave.aspx?v=1" runat="server" id="A1">
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
                                        <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Leave.aspx?v=2"></a>
                                        <%-- <i class="fa fa-check-square-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovedCount">0</asp:Label>
                                        </div>
                                        <div>Application(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Leave.aspx?v=2" runat="server" id="A2">
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
                                        <a class="fa fa-times-circle-o fa-3x" style="color: #8A6D3B" href="/Leave.aspx?v=3"></a>
                                        <%--<i class="fa fa-times-circle-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="rejectedCount">0</asp:Label>
                                        </div>
                                        <div>Rejected Application(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Leave.aspx?v=3" runat="server" id="A3">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Leave.aspx?v=4"></a>
                                        <%--<i class="fa fa-database fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="approvalsCount">0 Open</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Leave.aspx?v=4" runat="server" id="A4">
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
                                        <h3 style="color: #a35050;">New Leave Application</h3>
                                    </div>
                                    <div class="form-horizontal">
                                        <div class="awidget-body">
                                            <div class="row">
                                                <div class="col-md-12 text-right">
                                                    <asp:Label runat="server" ID="lblApplyleaveStatus" CssClass="label label-success" Font-Size="Small" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Application Code:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtApplicationCode" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Leave Type:</label>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlLeaveTypes" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlLeaveTypes_SelectedIndexChanged">
                                                                <asp:ListItem Value="">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlLeaveTypes"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Please Select Leave Type!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Application">
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
                                                            User ID:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtUserID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Start Date:</label>
                                                        <div class="col-md-8">
                                                            <div id="datetimepicker1" class="input-append">
                                                                <asp:TextBox runat="server" ID="txtStartDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStartDate"
                                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                    ValidationGroup="Application">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                                    TargetControlID="RequiredFieldValidator4">
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
                                                            Comments:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Style="text-align: left; text-transform: uppercase;"
                                                                CssClass="form-control input-sm" Text="Kindly Approve"></asp:TextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComments"
                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                            ValidationGroup="Application">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                            TargetControlID="RequiredFieldValidator3">
                                                        </asp:ValidatorCalloutExtender>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Days Applied:</label>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlDaysApplied" AutoPostBack="true" OnSelectedIndexChanged="ddlDaysApplied_SelectedIndexChanged" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                AppendDataBoundItems="true">
                                                                <asp:ListItem Value="">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDaysApplied"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Application">
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
                                                            Responsibility Center:</label>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlresponibilitycentres" Enabled="false" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                AppendDataBoundItems="true">
                                                                <asp:ListItem Value="">Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlresponibilitycentres"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Application">
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
                                                            Return Date:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtReturnDate" runat="server" Enabled="false"
                                                                CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Grade:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtGrade" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Recommender:</label>
                                                        <div class="col-md-8">
                                                            <asp:DropDownList ID="ddlRecommender" runat="server"
                                                                DataTextField="Names" DataValueField="User ID" CssClass="form-control input-sm">
                                                                <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlDaysApplied"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Application">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                                                TargetControlID="RequiredFieldValidator10">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Leave Contacts</h3>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Phone Number:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox runat="server" ID="txtPNo" CssClass="form-control input-sm"></asp:TextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPNo"
                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                            ValidationGroup="Application">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                            TargetControlID="RequiredFieldValidator6">
                                                        </asp:ValidatorCalloutExtender>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">
                                                            Email:</label>
                                                        <div class="col-md-8">
                                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                                                ValidationExpression="^\S+@\S+\.\S+$" SetFocusOnError="True" ErrorMessage="You must enter a valid email address!" />
                                                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" Enabled="True"
                                                                TargetControlID="RegularExpressionValidator1">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail"
                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="Application">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                                                TargetControlID="RequiredFieldValidator7">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="awidget-head">
                                                <h3 style="color: #a35050;">Add relievers if necessary</h3>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-12" style="text-align: left;">
                                                            Pending Assignements:</label>
                                                        <div class="col-md-12">
                                                            <asp:TextBox ID="txtPendingAssignements" runat="server" TextMode="MultiLine" CssClass="form-control input-sm" Width="100%"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPendingAssignements"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="reliever">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                                TargetControlID="RequiredFieldValidator8">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-12" style="text-align: left;">
                                                            Reliever:</label>
                                                        <div class="col-md-12">
                                                            <asp:DropDownList ID="ddlReliever" runat="server"
                                                                DataTextField="Names" AutoPostBack="true" DataValueField="No_" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlReliever_SelectedIndexChanged">
                                                                <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlReliever"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="reliever">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                                TargetControlID="RequiredFieldValidator9">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6"></div>
                                                <div class="col-md-6">
                                                    <asp:Button ID="ButtonAddReliever" CssClass="btn btn-info btn-xs" ValidationGroup="reliever" runat="server" Text="Add Reliever" OnClick="ButtonAddReliever_Click" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="gridRelievers" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_no"
                                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Line_no" HeaderText="Line_no" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                                                <asp:BoundField DataField="Reliever_No" HeaderStyle-Width="20%" HeaderText="Reliever No" ReadOnly="True"></asp:BoundField>
                                                                <asp:BoundField DataField="Reliever_Name" HeaderStyle-Width="30%" HeaderText="Reliever Name" ReadOnly="True"></asp:BoundField>
                                                                <asp:BoundField DataField="Pending_Assignment" HeaderText="Pending Assignment"></asp:BoundField>
                                                                <asp:BoundField DataField="Document_No" HeaderStyle-Width="10%" HeaderText="Document No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                                                <asp:TemplateField HeaderText="">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="btnRemoveReliever" runat="server" ForeColor="#8C1C03" Text="Remove" CommandName="CancelApp"
                                                                            OnClientClick="return confirm('Are you sure you want to remove this record?');"
                                                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveReliever_Click"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <PagerStyle CssClass="bs-pagination" />
                                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                            <EmptyDataTemplate>No Reliever Added!</EmptyDataTemplate>
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="display: none">
                                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                                <asp:Label ID="lblGrade" runat="server"></asp:Label>
                                            </div>
                                            <div class="row" style="display: none">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="grdViewRelievers" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDeleting="grdViewRelievers_RowDeleting">
                                                            <Columns>
                                                                <asp:BoundField DataField="RowNumber" HeaderText="No.">
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="EmployeeNo" HeaderText="EmployeeNo." Visible="false">
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                </asp:BoundField>
                                                                <asp:TemplateField HeaderText="Pending Assignments">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="txtPendingAssignements" runat="server" TextMode="MultiLine" CssClass="form-control input-sm" Width="100%"></asp:TextBox>

                                                                    </ItemTemplate>
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Reliever">
                                                                    <ItemTemplate>
                                                                        <asp:DropDownList ID="ddlReliever" runat="server"
                                                                            DataTextField="Names" AutoPostBack="true" DataValueField="No_" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlReliever_SelectedIndexChanged" DataSourceID="relieverData1">
                                                                            <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                                        </asp:DropDownList>

                                                                    </ItemTemplate>
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                    <FooterStyle HorizontalAlign="Right" BackColor="White" ForeColor="#000066" />
                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Reliever's Grade">
                                                                    <ItemTemplate>
                                                                        <div style="text-align: center;">
                                                                            <asp:Label ID="lblGrade" runat="server" Width="100px"></asp:Label>
                                                                        </div>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" />
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                    <FooterStyle HorizontalAlign="Right" BackColor="White" ForeColor="#000066" />
                                                                    <FooterTemplate>
                                                                        <asp:Button ID="ButtonAddReliever" CssClass="btn btn-info btn-xs" CausesValidation="false" runat="server" Text="Add" OnClick="ButtonAddReliever_Click" />
                                                                    </FooterTemplate>
                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Reliever Email" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblEmail" runat="server" Width="100px"></asp:Label>
                                                                    </ItemTemplate>
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                </asp:TemplateField>
                                                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-warning btn-xs" ControlStyle-ForeColor="White">
                                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                </asp:CommandField>
                                                            </Columns>
                                                            <PagerStyle CssClass="bs-pagination" />
                                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="relieverData1" runat="server"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6"></div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <div class="col-md-12 col-md-offset-9">
                                                            <asp:Button runat="server" ID="btnSubmitLeave" OnClick="btnSubmitLeave_Click" CssClass="btn btn-info btn-sm"
                                                                Text="Send For Approval" ValidationGroup="Application" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="display: none;">
                                                <asp:Label ID="lblUserID" runat="server" />
                                                <asp:Label ID="lblNo" runat="server" Width="180px"></asp:Label>
                                                <asp:Label ID="lblNames" runat="server" Width="250px"></asp:Label>
                                                <asp:Label ID="lblInfo" runat="server" ForeColor="Gray" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <strong style="color: #8C1C03;">Pending Leave Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridpending" runat="server" AutoGenerateColumns="False" DataKeyNames="Application_Code"
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
                                            <asp:BoundField DataField="Application_Code" HeaderText="Application Code" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Leave_Type" HeaderText="Leave Type" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Days_Applied" HeaderText="Days Applied" DataFormatString="{0:n2}"></asp:BoundField>
                                            <asp:BoundField DataField="Start_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Start Date"></asp:BoundField>
                                            <asp:BoundField DataField="Return_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Return Date"></asp:BoundField>
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
                        <strong style="color: #8C1C03;">Approved Leave Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridApproved" runat="server" AutoGenerateColumns="False" DataKeyNames="Application_Code"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridApproved_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewComments" runat="server" ForeColor="#A66D03" Text="View Comments" CommandName="Comments"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewComments_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail"></asp:ButtonField>
                                            <asp:BoundField DataField="Application_Code" HeaderText="Application Code" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Leave_Type" HeaderText="Leave Type" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Days_Applied" HeaderText="Days Applied" DataFormatString="{0:n2}"></asp:BoundField>
                                            <asp:BoundField DataField="Start_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Start Date"></asp:BoundField>
                                            <asp:BoundField DataField="Return_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Return Date"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Approved Applications Found!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <strong style="color: #8C1C03;">Rejected Leave Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridRejected" runat="server" AutoGenerateColumns="False" DataKeyNames="Application_Code"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridRejected_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewComments" runat="server" ForeColor="#A66D03" Text="View Comments" CommandName="Comments"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewComments_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail"></asp:ButtonField>
                                            <asp:BoundField DataField="Application_Code" HeaderText="Application Code" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Leave_Type" HeaderText="Leave Type" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Days_Applied" HeaderText="Days Applied" DataFormatString="{0:n2}"></asp:BoundField>
                                            <asp:BoundField DataField="Start_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Start Date"></asp:BoundField>
                                            <asp:BoundField DataField="Return_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Return Date"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Rejected Applications Found!</EmptyDataTemplate>
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
                        <strong id="approvalstext" runat="server" style="float: right; color: #8C1C03;">Leave requests for my approval</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridApprovalRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnPreRender="gridApprovalRequests_PreRender" OnRowDataBound="gridApprovalRequests_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnView" runat="server" ForeColor="#8C1C03" Text="View" CommandName="View"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnView_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Entry_No" HeaderText="Entry_No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                            <asp:BoundField DataField="Document_No" HeaderText="Document_No" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Sender_ID" HeaderText="Sender ID" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Date_Time_Sent_for_Approval" HeaderText="Date sent for Approval" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Last_Date_Time_Modified" HeaderText="Date Approved" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
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
                        <div class="awidget full-width">
                            <div class="tab-content nav nav-tabs">
                                <div class="active in">
                                    <div class="form-horizontal">
                                        <strong style="color: #8C1C03;">Leave Details :</strong>
                                        <div class="row">
                                            <div class="form-group" style="padding-left: 30px;">
                                                <asp:Literal runat="server" ID="litViewTraining"></asp:Literal>
                                            </div>
                                        </div>
                                        <hr />
                                        <strong style="color: #8C1C03;">Leave Relievers' List :</strong>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gridReleiversList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_no"
                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                        <Columns>
                                                            <asp:BoundField DataField="Line_no" HeaderText="Line_no" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                                            <asp:BoundField DataField="Document_No" HeaderStyle-Width="10%" HeaderText="Document No" ReadOnly="True"></asp:BoundField>
                                                            <asp:BoundField DataField="Reliever_No" HeaderStyle-Width="20%" HeaderText="Reliever No" ReadOnly="True"></asp:BoundField>
                                                            <asp:BoundField DataField="Reliever_Name" HeaderStyle-Width="30%" HeaderText="Reliever Name" ReadOnly="True"></asp:BoundField>
                                                            <asp:BoundField DataField="Pending_Assignment" HeaderText="Pending Assignment"></asp:BoundField>
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
                                        <div class="row" style="float: right">
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <asp:LinkButton ID="ApprovalComments" runat="server" Text="View Comments" OnClick="ApprovalComments_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lbApproverAttachments" runat="server" Text="View Attachments"
                            OnClick="lbApproverAttachments_Click" />
                                                </div>
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
                                                        <asp:Button runat="server" ID="btnApproveLeave" OnClick="btnApproveLeave_Click" CssClass="btn btn-success btn-sm"
                                                            Text="Approve Leave Request" OnClientClick="return confirm('Are you certain you want to Approve this leave application?');" />
                                                        <asp:Button runat="server" ID="btnRejectLeave" OnClick="btnRejectLeave_Click" CssClass="btn btn-default btn-sm"
                                                            Text="Reject Leave Request" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this leave application?');" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group" style="padding-left: 20px">
                                                    <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" CssClass="btn btn-warning btn-sm"
                                                        Text="Close" CausesValidation="false" />
                                                </div>
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
    <script type="text/javascript">
        function startDateChange() {
            alert("date changed");
        }
    </script>
</asp:Content>
