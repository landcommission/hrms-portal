<%@ Page Language="C#" AutoEventWireup="true" Title="Exit Interview" MasterPageFile="~/Site.Master" CodeBehind="ExitInterview.aspx.cs" Inherits="NLC_HRMS_PORTAL.ExitInterview" %>

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
                    <h3 style="color: #a35050;">Exit Interview</h3>
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Interview Number:</label>
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
                                        <asp:TextBox runat="server" ID="ddlresponibilitycentres" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Employee Number:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="empno" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Employee Name:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="fullname" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Date of Employment:</label>
                                    <div class="col-md-8">
                                        <div id="datetimepicker3" class="input-append">
                                            <asp:TextBox runat="server" ID="DtOFEmployment" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="DtOFEmployment"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Interview">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender19"
                                                TargetControlID="RequiredFieldValidator19">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Date of Leaving:</label>
                                    <div class="col-md-8">
                                        <div id="datetimepicker4" class="input-append">
                                            <asp:TextBox runat="server" ID="DtOFLeaving" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DtOFLeaving"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="Interview">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender20"
                                                TargetControlID="RequiredFieldValidator20">
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
                                        Separation No.:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="ddlRefNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddlRefNo"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender21"
                                            TargetControlID="RequiredFieldValidator21">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Status:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="status" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="awidget-head">
                            <h3 style="color: #a35050;">1. What are your reasons for leaving the commission?:</h3>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Dissatisfaction with job:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbJobSatisfaction" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Career Growth/Change:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbCareerGrowth" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Relocation:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbRelocation" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Transportation Difficulties:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbTransportation" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Retirement:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbRetirement" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Attend School:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbAttendSchool" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Home Duties/family obligation:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbHomeDuties" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Better Oportunity:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbBetterOportunity" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Job closer to home:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbJobCloser" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        ill Health:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbHealth" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Re-Structuring:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbReStructuring" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Own accord/Personal:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbPersonal" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Disability:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbDisability" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-5">
                                        Disciplinary related separation:</label>
                                    <div class="col-md-7">
                                        <asp:CheckBox ID="cbDisciplinary" runat="server" CssClass="form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>
                        <hr />
                        <div class="awidget-head">
                            <h3 style="color: #a35050;">2. Please answer the following questions by indicating the extent to which you agree/disagree
                    by choosing one of the following statements:</h3>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I enjoyed my work activities:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlEnjoyWork" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEnjoyWork"
                                        SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                        ValidationGroup="Interview">
                                    </asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                        TargetControlID="RequiredFieldValidator1">
                                    </asp:ValidatorCalloutExtender>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I felt there were opportunities for career advancements:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlCareerOpportunity" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCareerOpportunity"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                            TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I was challenged by my job:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlJobChallenge" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlJobChallenge"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                            TargetControlID="RequiredFieldValidator3">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I can recommend the organization as a good place to work:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlGoodRecommendation" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlGoodRecommendation"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                            TargetControlID="RequiredFieldValidator4">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I was paid for my work:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlPaidForWork" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlPaidForWork"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                            TargetControlID="RequiredFieldValidator5">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        Workload was manageable:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlWorkloadManageable" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlWorkloadManageable"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
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
                                    <label class="control-label col-md-7">
                                        My supervisor demonstrated fair and equitable treatment:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlSupervisorFair" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlSupervisorFair"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                            TargetControlID="RequiredFieldValidator7">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        There was availability of working resources:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlAvailableResources" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlAvailableResources"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                            TargetControlID="RequiredFieldValidator8">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        My supervisor gave clear instructions for work assignments and responsibilities:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlSupervisorInstructions" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlSupervisorInstructions"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
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
                                    <label class="control-label col-md-7">
                                        My colleagues listened to and appreciated my suggestions:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlColleaguesListen" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlColleaguesListen"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                            TargetControlID="RequiredFieldValidator10">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I was recognnized for my good work:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlRecognizeGoodWork" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlRecognizeGoodWork"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                            TargetControlID="RequiredFieldValidator11">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        My skills were properly utilized:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlSkillsUtilized" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlSkillsUtilized"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                            TargetControlID="RequiredFieldValidator12">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        My job description accurately reflected my job responsibilities:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlAccurateJD" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlAccurateJD"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                            TargetControlID="RequiredFieldValidator13">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I had access to adequate training and development programs:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlAdequateTraining" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlAdequateTraining"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                            TargetControlID="RequiredFieldValidator14">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-7">
                                        I was given honest Performance Appraisals:</label>
                                    <div class="col-md-5">
                                        <asp:DropDownList ID="ddlPerformanceAppraisal" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="0">Select One</asp:ListItem>
                                            <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
                                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                                            <asp:ListItem Value="4">Agree</asp:ListItem>
                                            <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlPerformanceAppraisal"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" InitialValue="0" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                            TargetControlID="RequiredFieldValidator15">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-6">
                                        3. What did
                    you find most satisfying about your job?:</label>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtJobMostSatisfying" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtJobMostSatisfying"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender16"
                                            TargetControlID="RequiredFieldValidator16">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-6">
                                        4. What did
                    you find most challenging about your job?:</label>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtJobMostChallenging" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtJobMostChallenging"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Interview">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender17"
                                            TargetControlID="RequiredFieldValidator17">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-6">
                                        Comments:</label>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12 col-md-offset-6">
                                        <asp:Button runat="server" ID="btnSave" ValidationGroup="Interview" OnClick="btnSave_Click" CssClass="btn btn-info"
                                            Text="Submit" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
