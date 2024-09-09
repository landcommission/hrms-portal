<%@ Page Language="C#" Title="Training" AutoEventWireup="true" CodeBehind="Training Applications.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Training_Applications" %>

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
                    <h3 style="color: #a35050;">Training and Development</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Training application?');" href="/Training Applications.aspx?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Training Application</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Training Applications.aspx?v=0" runat="server" id="newApplications" onclick="return confirm('Are you sure you want to create a new Training application?');">
                                <div class="panel-footer">
                                    <span class="pull-left">Click here to Apply</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
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
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Training Applications.aspx?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Applied Training Requests</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Training Applications.aspx?v=1" runat="server" id="A1">
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
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Training Applications.aspx?v=2"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                        </div>
                                        <div>Training Approval Requests</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Training Applications.aspx?v=2" runat="server" id="A2">
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
                            <strong style="color: #8C1C03;">New Training-Need Form</strong>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Document No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="lblDocNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Sponsor:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlSponsor" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="">Select Sponsor</asp:ListItem>
                                                <asp:ListItem Value="S">Donor</asp:ListItem>
                                                <asp:ListItem Value="L">NLC</asp:ListItem>
                                                <asp:ListItem Value="L">Other</asp:ListItem>
                                                <asp:ListItem>Self</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlSponsor"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                TargetControlID="RequiredFieldValidator2">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" style="display: none;">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Responsibility Center:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="ddlDepartment" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Training Type:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlTrainingType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTrainingType_SelectedIndexChanged" CssClass="form-control input-sm">
                                                <asp:ListItem Value="">Select Training Type</asp:ListItem>
                                                <asp:ListItem Value="1">Short Term Training</asp:ListItem>
                                                <asp:ListItem Value="2">Long Term Training</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlTrainingType"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                                TargetControlID="RequiredFieldValidator10">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Training Category:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlTrainingCateg" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="">Select Training Category</asp:ListItem>
                                                <asp:ListItem Value="1">Academic</asp:ListItem>
                                                <asp:ListItem Value="2">Induction</asp:ListItem>
                                                <asp:ListItem Value="3">Proffessional/Technical</asp:ListItem>
                                                <asp:ListItem Value="4">Management</asp:ListItem>
                                                <asp:ListItem Value="5">Performance Improvement</asp:ListItem>
                                                <asp:ListItem Value="5">Seminar/Workshop/Conference</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlTrainingCateg"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                                TargetControlID="RequiredFieldValidator11">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Course Title:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlApprovedCourses" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                AppendDataBoundItems="true" OnSelectedIndexChanged="ddlApprovedCourses_SelectedIndexChanged" AutoPostBack="true">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlApprovedCourses"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
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
                                            Other Course Title:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtCourseD" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Duration Units:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlDurationUnits" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <%--<asp:ListItem Value="">Select Duration Unit</asp:ListItem>
                                               <asp:ListItem Value="D">Days</asp:ListItem>
                                                <asp:ListItem Value="W">Weeks</asp:ListItem>
                                                <asp:ListItem Value="M">Months</asp:ListItem>
                                                <asp:ListItem Value="Y">Years</asp:ListItem>--%>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlDurationUnits"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
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
                                            Duration:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddTrainingDuration" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true" OnSelectedIndexChanged="ddTrainingDuration_SelectedIndexChanged" AutoPostBack="true">
                                                <asp:ListItem Value="0">Select Duration</asp:ListItem>
                                                <asp:ListItem Value="1">1</asp:ListItem>
                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                <asp:ListItem Value="3">3</asp:ListItem>
                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                <asp:ListItem Value="5">5</asp:ListItem>
                                                <asp:ListItem Value="6">6</asp:ListItem>
                                                <asp:ListItem Value="7">7</asp:ListItem>
                                                <asp:ListItem Value="8">8</asp:ListItem>
                                                <asp:ListItem Value="9">9</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddTrainingDuration"
                                                SetFocusOnError="True" ErrorMessage="Required!" InitialValue="0" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
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
                                            Start Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker1" class="input-append">
                                                <asp:TextBox runat="server" ID="dpTrainingStartDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dpTrainingStartDate"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="Application">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                    TargetControlID="RequiredFieldValidator5">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            End Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker5" class="input-append">
                                                <asp:TextBox runat="server" ID="lblEndDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Training Institution:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtTrainingProvider" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTrainingProvider"
                                                SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                TargetControlID="RequiredFieldValidator6">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Training Venue:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtTrainingCentre" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTrainingCentre"
                                                SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                TargetControlID="RequiredFieldValidator7">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Location(Town/country):</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtTrainingLocation" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTrainingLocation"
                                                SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                TargetControlID="RequiredFieldValidator8">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Total Cost of Training (KES):</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtTrainingCost" CssClass="form-control input-sm" onkeypress="return functionx(event)"
                                                onkeyup="javascript:this.value=Comma(this.value);"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtTrainingCost"
                                                SetFocusOnError="True" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                TargetControlID="RequiredFieldValidator9">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Is the course part of the <b>recommended</b> trainings for the year?</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlCourseRecommended" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Text="-- Please Specify --" Value="0" />
                                                <asp:ListItem Text="No" Value="1" />
                                                <asp:ListItem Text="Yes" Value="2" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlCourseRecommended"
                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Application">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                                TargetControlID="RequiredFieldValidator12">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Last Training Attended:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtLastTrAttend" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Last Training Attended From:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker3" class="input-append">
                                                <asp:TextBox runat="server" ID="dpLastTrainingFrom" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Last Training Attended From:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker4" class="input-append">
                                                <asp:TextBox runat="server" ID="dpLastTrainingTo" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Justification of the Training:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
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
                            <hr />
                            <asp:Panel ID="pnlEmployee" runat="server" Visible="false">
                                <label style="color: #8C1C03;">Accompaning Employee(s) List:</label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Employee Name:</label>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="ddlEmployees" DataValueField="No_" DataTextField="Full Name" runat="server" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true">
                                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="" ControlToValidate="ddlEmployees"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="lines">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                                    TargetControlID="RequiredFieldValidator13">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Employee's Purpose:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtEmployeePurpose" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtEmployeePurpose"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="lines">
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
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-12 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnAddEmployees" ValidationGroup="lines" OnClick="btnAddEmployees_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                    Text="Add Employee" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee No_"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvEmployees_RowCommand"
                                                OnRowDataBound="gvEmployees_RowDataBound" OnPageIndexChanging="gvEmployees_PageIndexChanging">
                                                <Columns>
                                                    <asp:BoundField DataField="Employee No_" HeaderText="Employee No"
                                                        SortExpression="Employee No_" />
                                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                    <asp:BoundField DataField="Objectives" HeaderText="Objectives" SortExpression="Objectives" />
                                                    <asp:BoundField DataField="Job Title" HeaderText="Job Title" SortExpression="Job Title" />
                                                    <asp:BoundField DataField="Job Description" HeaderText="Job Description" SortExpression="Job Description" />
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
                                                <EmptyDataTemplate>No Accompaning Employee(s) added!</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <hr />
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12 col-md-offset-4">
                                            <asp:Button runat="server" ID="btnSaveTrainingRequest" OnClick="btnSaveTrainingRequest_Click" CssClass="btn btn-info btn-sm"
                                                Text="Send For Approval" ValidationGroup="Application" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <strong style="color: #8C1C03;">My Training Request Applications</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridTrainingRequests" runat="server" AutoGenerateColumns="False" DataKeyNames="Application_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridTrainingRequests_RowDataBound" OnRowCommand="gridTrainingRequests_RowCommand">
                                        <Columns>
                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                <ItemStyle Width="60px" />
                                            </asp:ButtonField>
                                            <asp:BoundField DataField="Application_No" HeaderText="Application No" SortExpression="Application_No" ReadOnly="True" />
                                            <asp:BoundField DataField="Course_Description" HeaderText="Description" />
                                            <asp:BoundField DataField="Start_Date" DataFormatString="{0:d}" HeaderText="Start Date" />
                                            <asp:BoundField DataField="End_Date" HeaderText="End Date" DataFormatString="{0:d}" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" />
                                            <asp:TemplateField HeaderText="Current Approver">
                                                <ItemStyle Width="220px" />
                                                <ItemTemplate>
                                                    <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ButtonType="Link" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail">
                                                <ItemStyle Width="60px" />
                                            </asp:ButtonField>
                                            <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ButtonType="Link" ControlStyle-ForeColor="#A66D03" Text="View Comments">
                                                <ItemStyle Width="60px" />
                                            </asp:ButtonField>
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
                        <strong style="color: #8C1C03;">My Training Approval Request</strong>
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
                                                    <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#8C1C03" Text="View Application" CommandName="ViewApplication"
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
                    <asp:View ID="View4" runat="server">
                        <strong style="color: #8C1C03;">Training Request Details :</strong>
                        <div class="row">
                            <asp:Literal runat="server" ID="litViewTraining"></asp:Literal>
                        </div>
                        <div class="row" id="viewTrainingDetails" runat="server" visible="false">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Application Date:</label>
                                    <div class="col-md-8">
                                        <input id="Application_Date" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Application No.:</label>
                                    <div class="col-md-8">
                                        <input id="Application_No" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Employee Name:</label>
                                    <div class="col-md-8">
                                        <input id="Employee_Name" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Approval Status:</label>
                                    <div class="col-md-8">
                                        <input id="Status" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Course Code:</label>
                                    <div class="col-md-8">
                                        <input id="Course_Title" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Description:</label>
                                    <div class="col-md-8">
                                        <input id="Course_Description" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Training Cost:</label>
                                    <div class="col-md-8">
                                        <input id="Training_Cost" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Training Status:</label>
                                    <div class="col-md-8">
                                        <input id="Training_Status" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        From Date:</label>
                                    <div class="col-md-8">
                                        <input id="From_Date" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        To Date:</label>
                                    <div class="col-md-8">
                                        <input id="To_Date" disabled="disabled" class="form-control input-sm" runat="server" />
                                    </div>
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
    <script type="text/javascript">
        function functionx(evt) {
            if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                alert("Please enter only numeric characters in the text box");
                return false;
            }
        }
        function Comma(Num) { //function to add commas to textboxes
            Num += '';
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            x = Num.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1))
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            return x1 + x2;
        }
        function sumCalc() // function to remove comma and then add to third textbox
        {
            var txt1 = document.getElementById('<%=txtTrainingCost.ClientID %>').value.replace(/,/g, "");
        }
        $(function () {
            $('[id *=ddlApprovedCourses]').select2();
            $('[id *=ddlEmployees]').select2();

        });
    </script>
</asp:Content>
