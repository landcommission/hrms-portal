<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appraisal.aspx.cs" Title="Performance Appraisal" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Appraisal" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="tabs" style="width: max-content;">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;" id="h3Title" runat="server">Performance Management</h3>
                </div>
                <div class="awidget-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle col-md-12 m-r-0 m-l-0"
                                ActiveTabIndex="0">
                                <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Create New Appraisal">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="awidget-head">
                                                                <h3 style="color: #a35050;">SECTION 1: Personal Particulars (to be filled by the Appraisee)</h3>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Appraisal Code:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="lblNo" Text="Auto Generated" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Status:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="lblStatus" Enabled="false" Text="Appraisee" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Personal No:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="lblEmployeeNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Immediate Supervisor:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlAppraisers" runat="server" CssClass="form-control input-sm" DataValueField="No_" DataTextField="Full Name"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlAppraisers"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Please Select!" ForeColor="Red" Display="None"
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
                                                                        Appraisal Type:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlappraisaltype" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlappraisaltype"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Please Select!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Application">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                                            TargetControlID="RequiredFieldValidator2">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Appraisal Period:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlappraisalperiod" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlappraisalperiod"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Please Select!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Application">
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
                                                                    <label class="control-label col-md-4">
                                                                        Date of Appointment:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="lblDateOfAppointment" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Second Supervisor:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlSecondAppraiser" runat="server" CssClass="form-control input-sm" DataValueField="No_" DataTextField="Full Name"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnCreateNewAppraisal" OnClick="btnCreateNewAppraisal_Click" CssClass="btn btn-info btn-sm"
                                                                            Text="Create New Appraisal" ValidationGroup="Application" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="My Appraisal List">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvMyAppraisals" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Appraisal_No"
                                                                        EmptyDataText="You have no appraisals please create new appraisal." OnRowCommand="gvMyAppraisals_RowCommand"
                                                                        OnRowDataBound="gvMyAppraisals_RowDataBound">
                                                                        <Columns>
                                                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                                                <ItemStyle Width="60px" />
                                                                            </asp:ButtonField>
                                                                            <%-- <asp:TemplateField HeaderText="Appraisal No">
                                                                                <ItemTemplate>
                                                                                    <asp:Literal ID="litActual" runat="server"></asp:Literal>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Explored-Appraisee"  HeaderStyle-CssClass="hidden">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredByAppraisee" runat="server" Text='<%# Bind("Explored_By_Appraisee") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Explored-Supervisor">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredBySupervisor" runat="server" Text='<%# Bind("Explored_By_Supervisor") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>--%>
                                                                            <asp:BoundField DataField="Appraisal_No" HeaderText="Appraisal Code" ReadOnly="True"
                                                                                SortExpression="Appraisal_No">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>

                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period"></asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status"></asp:BoundField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnObjAndTargets" Visible="false" runat="server" ForeColor="#8C1C03" Text="Objectives and Targets" CommandName="btnpart1"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnObjAndTargets_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnAttributes" Visible="false" runat="server" ForeColor="#8C1C03" Text="Employee's Attributes" CommandName="btnpart2"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnAttributes_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnFutureObjs" runat="server" ForeColor="#8C1C03" Text="Future Performance Objectives" CommandName="btnpart3"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnFutureObjs_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnPersonalTrainingAndDev" Visible="false" runat="server" ForeColor="#8C1C03" Text="Personal Training and Development Plan" CommandName="btnpart4"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnPersonalTrainingAndDev_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnSupervisorAndAppraiserComments" Visible="false" runat="server" ForeColor="#8C1C03" Text="Supervisor and Appraisee comments" CommandName="btnpart5"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnSupervisorAndAppraiserComments_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                    <%--<asp:SqlDataSource ID="MyAppraisals" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Moderate Appraisals">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvMyModerateAppraisals" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Appraisal_Code"
                                                                        EmptyDataText="You have no appraisals." OnRowCommand="gvMyAppraisals_RowCommand"
                                                                        OnRowDataBound="gvMyAppraisals_RowDataBound">
                                                                        <Columns>
                                                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                                                <ItemStyle Width="60px" />
                                                                            </asp:ButtonField>
                                                                            <asp:TemplateField HeaderText="Appraisal No">
                                                                                <ItemTemplate>
                                                                                    <asp:Literal ID="litActual" runat="server"></asp:Literal>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="StatusValue" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblStatusValue" runat="server" Text='<%# Bind("StatusValue") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Explored-Appraisee" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredByAppraisee" runat="server" Text='<%# Bind("[Explored By Appraisee]") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Explored-Supervisor" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredBySupervisor" runat="server" Text='<%# Bind("[Explored By Supervisor]") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="Appraisal_Code" HeaderText="Appraisal Code" ReadOnly="True"
                                                                                SortExpression="Appraisal_Code" Visible="false">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>

                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period"></asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status"></asp:BoundField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnObjAndTargets" Visible="false" runat="server" ForeColor="#8C1C03" Text="Objectives and Targets" CommandName="btnpart1"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnObjAndTargets_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnAttributes" Visible="false" runat="server" ForeColor="#8C1C03" Text="Employee's Attributes" CommandName="btnpart2"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnAttributes_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnFutureObjs" runat="server" ForeColor="#8C1C03" Text="Future Performance Objectives" CommandName="btnpart3"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnFutureObjs_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnPersonalTrainingAndDev" Visible="false" runat="server" ForeColor="#8C1C03" Text="Personal Training and Development Plan" CommandName="btnpart4"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnPersonalTrainingAndDev_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="btnSupervisorAndAppraiserComments" Visible="false" runat="server" ForeColor="#8C1C03" Text="Supervisor and Appraisee comments" CommandName="btnpart5"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnSupervisorAndAppraiserComments_Click"></asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Print Appraisal Form">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvPrintMyAppraisals" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Appraisal_Code" DataSourceID="PrintMyAppraisals"
                                                                        EmptyDataText="You have no appraisals." OnRowCommand="gvPrintMyAppraisals_RowCommand">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Appraisal_Code" HeaderText="Appraisal Code" ReadOnly="True"
                                                                                SortExpression="Appraisal_Code"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period"></asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status"></asp:BoundField>
                                                                            <asp:ButtonField CommandName="btnpart1" Text="Print" />
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="PrintMyAppraisals" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                            </asp:TabContainer>
                        </div>
                    </div>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <div class="form-horizontal">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Objective:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtPerfIndicator" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPerfIndicator"
                                                    SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="indicator">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                    TargetControlID="RequiredFieldValidator4">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Performance Indicatior:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtpreviousgoals" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpreviousgoals"
                                                    SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="indicator">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                    TargetControlID="RequiredFieldValidator5">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Achievements:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtAchievements" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAchievements"
                                                    SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="indicator">
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
                                                Ratings:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtRatingPerformanceTarget" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Supervisor's Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtgoalscomments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtgoalscomments"
                                                    SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="indicator">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                    TargetControlID="RequiredFieldValidator7">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnsaveobjectives" OnClick="btnsaveobjectives_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Save Objectives" ValidationGroup="indicator" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvObjectives" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="No Series" DataSourceID="dsObjectives"
                                                EmptyDataText="You have no objectives added.">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnEditObjAndTargets" runat="server" ForeColor="#8C1C03" Text="Edit"
                                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditObjAndTargets_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="No Series" HeaderText="No" InsertVisible="False" ReadOnly="True"
                                                        Visible="false" SortExpression="No Series">
                                                        <ItemStyle Width="40px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Criteria" HeaderText="Criteria" SortExpression="Criteria"
                                                        Visible="false">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Objectives" HeaderText="Objectives" SortExpression="Objectives">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Performance Indicator" HeaderText="Performance Indicator"
                                                        SortExpression="Performance Indicator">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Performance" HeaderText="Achievements" SortExpression="Performance" />
                                                    <asp:BoundField DataField="AppraiseeRating" HeaderText="Ratings(appraisee)" ReadOnly="True">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="SupervisorRating" HeaderText="Ratings(supervisor)" ReadOnly="True">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <%-- <asp:BoundField DataField="SecondSupervisorRating" HeaderText="Ratings(2nd supervisor)" ReadOnly="True">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>--%>
                                                    <asp:BoundField DataField="Supervisor Comments" HeaderText="Supervisor Comments"
                                                        SortExpression="Supervisor Comments" />
                                                </Columns>
                                                <HeaderStyle ForeColor="White" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="dsObjectives" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">
                                                PART ONE PERFORMANCE RATING</label>
                                            <div class="col-md-3">
                                                <asp:DropDownList ID="ddlPart1ratings" Enabled="false" runat="server" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true">
                                                    <asp:ListItem Value="">Select</asp:ListItem>
                                                    <asp:ListItem Value="1">1- Unsatisfactory</asp:ListItem>
                                                    <asp:ListItem Value="2">2- Development Required</asp:ListItem>
                                                    <asp:ListItem Value="3">3- Meets Expectations</asp:ListItem>
                                                    <asp:ListItem Value="4">4- Exceeds Expectations</asp:ListItem>
                                                    <asp:ListItem Value="5">5- Exceptional</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Total Rating (me)
                                            </label>
                                            <div class="col-md-8">
                                                <asp:Label ID="lblTotalRateAppraisee" CssClass="control-label" runat="server">0</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Total Rating (sup)
                                            </label>
                                            <div class="col-md-8">
                                                <asp:Label ID="lblTotalRateSupervisor" CssClass="control-label" runat="server">0</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Employee's Comments
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtemployeecomments1" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Supervisor's Comments
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtsupervisorcomments1" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnsavepart1Comments" OnClick="btnsavepart1Comments_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Save Part One Comments" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                            </div>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <div class="form-horizontal">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label class="control-label col-md-4">
                                                Criteria Cluster:</label>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="ddlCluster" runat="server" OnSelectedIndexChanged="ddlCluster_SelectedIndexChanged" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true" AutoPostBack="true" DataTextField="Description" DataValueField="Code">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label col-md-4">
                                                Attributes:</label>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="ddlpindicators" runat="server" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true" DataTextField="Attributes" DataValueField="Entry No" OnSelectedIndexChanged="ddlpindicators_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="display: none;">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Definition:
                                            </label>
                                            <div class="col-md-8">
                                                <asp:Label ID="lbldescription" CssClass="control-label" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Appraisee's Comment
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtAppraiseeComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Immediate Supervisor's Comments
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtIndicatorComments" Enabled="false" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnsavePerfomance" OnClick="btnsavePerfomance_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Save Attributes" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvPerfIndicators" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="No Series" DataSourceID="PerformanceIndicators"
                                                EmptyDataText="You have not yet added any performance indicators.">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnEditperfIncicators" runat="server" ForeColor="#8C1C03" Text="Edit"
                                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditperfIncicators_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Appraisal Code" HeaderText="Appraisal Code" Visible="false"
                                                        ReadOnly="True" SortExpression="Code"></asp:BoundField>
                                                    <asp:BoundField DataField="Criteria Cluster Description" HeaderText="Criteria Cluster"
                                                        SortExpression="Criteria Cluster Description"></asp:BoundField>
                                                    <asp:BoundField DataField="Interpersonal Factors Text" HeaderText="Appraisee's Values And Competencies"
                                                        SortExpression="Interpersonal Factors Text"></asp:BoundField>
                                                    <asp:BoundField DataField="Examples Behaviours" HeaderText="Examples" ReadOnly="True"
                                                        SortExpression="Examples Behaviours" Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="AppraiseeRating" HeaderText="Ratings (me)" ReadOnly="True"
                                                        Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="PeerRating" HeaderText="Ratings (Peer)" ReadOnly="True"
                                                        Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="SupervisorRating" HeaderText="Ratings (supervisor)" ReadOnly="True"
                                                        Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="AgreedRating" HeaderText="Agreed Ratings" ReadOnly="True"
                                                        Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="Peer Comments" HeaderText="Peer Comments" ReadOnly="True"
                                                        Visible="false"></asp:BoundField>
                                                    <asp:BoundField DataField="Appraisee Comments" HeaderText="Appraisee Comments"
                                                        ReadOnly="True"></asp:BoundField>
                                                    <asp:BoundField DataField="Supervisor Comments" HeaderText="Supervisor Comments"
                                                        ReadOnly="True"></asp:BoundField>
                                                </Columns>
                                                <HeaderStyle ForeColor="White" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="PerformanceIndicators" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <div class="form-horizontal">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Training and development needs :                                               
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtTrainingNeeds" PlaceHolder="(eg.Supervisory Skills, Customer Care Skills....)" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Type of Training:                                         
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtTypeOfTraining" PlaceHolder="(eg.Supervisory Management cource, Customer Care Management Cource...)" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Duration of Training:
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtDuration" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnTrainingDevt" OnClick="btnTrainingDevt_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Save Training & Development Needs" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvAppraisalTraining" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Entry No" OnRowCommand="gvAppraisalTraining_RowCommand"
                                                EmptyDataText="You have no training needs saved." OnRowDataBound="gvAppraisalTraining_RowDataBound">
                                                <Columns>
                                                    <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                        <ItemStyle Width="60px" />
                                                    </asp:ButtonField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnEditTrainingNeeds" runat="server" ForeColor="#8C1C03" Text="Edit"
                                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditTrainingNeeds_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Entry No" HeaderText="Entry No" InsertVisible="False"
                                                        Visible="false" ReadOnly="True" SortExpression="Entry No">
                                                        <ItemStyle Width="40px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Skills Gap" HeaderText="Skills gap(s)" />
                                                    <asp:BoundField DataField="Training Type" HeaderText="Training Type" SortExpression="Training Type" />
                                                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                                </Columns>
                                                <HeaderStyle ForeColor="White" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="awidget-head">
                                    <h3 style="color: #a35050;">Training & Development Comments</h3>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Appraisee's Comment:
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtAppraiseesComView3" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Immediate Supervisor's Comments:
                                            </label>
                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" ID="txtSupervisorComView3" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnSaveTrainingAndDevComm" OnClick="btnSaveTrainingAndDevComm_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Save Training & Devt. Comments" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <div class="form-horizontal">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label col-md-3" style="text-align: center">
                                                OVERALL PERFORMANCE
                                                <br />
                                                RATING:
                                            </label>
                                            <div class="col-md-3" style="text-align: center">
                                                Total Appraisee Score on Performance Targets:
                        <br />
                                                <asp:Label ID="lblAppraiseeGrandScore" runat="server" CssClass="control-label" Font-Bold="True" Font-Underline="True">0</asp:Label>
                                            </div>
                                            <div class="col-md-3" style="text-align: center">
                                                Mean Appraisal Score:
                        <br />
                                                <asp:Label ID="lblSupervisorGrandScore" runat="server" CssClass="control-label" Font-Bold="True" Font-Underline="True">0</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <label class="control-label">
                                                BRIEF SUMMARY BY SUPERVISOR OF THE OVERALL PERFORMANCE OF PART 1 & 2
                                            </label>

                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="txtsupervisorcomments" Enabled="false" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <label class="control-label">
                                                RECOMMENDATION FOR FURTHER DEVELOPMENT BY SUPERVISOR
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="txtrecomendations" Enabled="false" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7 col-md-offset-4">
                                                <asp:Button runat="server" ID="btnsaveoverall" OnClick="btnsaveoverall_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Save Overall Comments" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="printView" runat="server">
                            <div class="form-horizontal">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <iframe runat="server" id="myPDF" src="" width="100%" height="500" />
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
</asp:Content>
