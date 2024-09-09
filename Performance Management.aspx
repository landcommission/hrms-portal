<%@ Page Language="C#" AutoEventWireup="true" Title="Performance Management" CodeBehind="Performance Management.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Performance_Management" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="tabs col-md-12" style="width: max-content;">
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
                                                        <div class="row" style="padding-right: 35px;">
                                                            <div class="form-group">
                                                                <button class="btn closeform" runat="server" id="btnClose1" style="float: right; color: red; display: none"><i class="fa fa-close">Close</i></button>
                                                            </div>
                                                        </div>
                                                        <div class="row" id="divMyAppraisalList" runat="server">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvMyAppraisals" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" DataSourceID="MyAppraisals" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Appraisal_Code"
                                                                        EmptyDataText="You have no appraisals please create new appraisal." OnRowCommand="gvMyAppraisals_RowCommand"
                                                                        OnRowDataBound="gvMyAppraisals_RowDataBound">
                                                                        <Columns>
                                                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/images/cancel.png">
                                                                                <ItemStyle Width="60px" />
                                                                            </asp:ButtonField>
                                                                            <asp:TemplateField HeaderText="Appraisal No">
                                                                                <ItemStyle Width="100px" />
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
                                                                            <asp:TemplateField HeaderText="Explored-Peer" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredByPeer" runat="server" Text='<%# Bind("[Explored By Second Supervisor]") %>'></asp:Label>
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
                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type">
                                                                                <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period">
                                                                                <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="DocAtName" HeaderText="At:" ReadOnly="True" SortExpression="Status">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>
                                                                            <asp:ButtonField CommandName="lbIndividualObjectives" ItemStyle-ForeColor="#8C1C03" ItemStyle-Width="250px" Text="Departmental Objectives">
                                                                                <ItemStyle Width="150px" />
                                                                            </asp:ButtonField>
                                                                            <asp:ButtonField CommandName="btnpart1" ItemStyle-ForeColor="#8C1C03" Text="Agreed Performance Targets" />
                                                                            <asp:ButtonField CommandName="btnpart2" ItemStyle-ForeColor="#8C1C03" Text="Appraisee's Values And Competencies" />
                                                                            <asp:ButtonField CommandName="btnpart5" ItemStyle-ForeColor="#8C1C03" Text="Staff Training and Development Needs" />
                                                                            <asp:ButtonField CommandName="btnpart4" Text="Future Performance Objectives" Visible="false" />
                                                                            <asp:ButtonField CommandName="btnpart3" ItemStyle-ForeColor="#8C1C03" Text="Comments And Recommendations" />
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="MyAppraisals" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Mid Year Review">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <div class="col-md-2">
                                                                        <asp:LinkButton Style="text-align: center;" ID="LinkButton5" runat="server" Width="140px"
                                                                            OnClick="LinkButton5_Click">My Mid-Year Reviews</asp:LinkButton>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <asp:LinkButton Style="text-align: center;" ID="LinkButton6" runat="server" Width="180px"
                                                                            OnClick="LinkButton6_Click">Moderate Mid-Year Reviews</asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:MultiView ID="MultiView2" runat="server">
                                                                        <asp:View ID="View1" runat="server">
                                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Appraisal_Code"
                                                                                EmptyDataText="You have no appraisals To Change Or Add." DataSourceID="SqlDataSource1" OnPageIndexChanging="GridView1_PageIndexChanging"
                                                                                OnRowCommand="GridView1_RowCommand">
                                                                                <EmptyDataRowStyle ForeColor="Red" />
                                                                                <Columns>
                                                                                    <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/images/cancel.png"
                                                                                        Visible="false">
                                                                                        <ItemStyle Width="60px" />
                                                                                    </asp:ButtonField>
                                                                                    <asp:TemplateField HeaderText="Appraisal No">
                                                                                        <ItemStyle Width="100px" />
                                                                                        <ItemTemplate>
                                                                                            <%--<asp:Literal ID="litActual" runat="server"></asp:Literal>--%>
                                                                                            <asp:Label ID="lblDocNo" runat="server" Text='<%# Bind("Appraisal_Code") %>'></asp:Label>
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
                                                                                    <asp:TemplateField HeaderText="Explored-Peer" Visible="false">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="lblExploredByPeer" runat="server" Text='<%# Bind("[Explored By Second Supervisor]") %>'></asp:Label>
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
                                                                                    <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type">
                                                                                        <ItemStyle Width="100px" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period">
                                                                                        <ItemStyle Width="100px" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status">
                                                                                        <ItemStyle Width="80px" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="DocAtName" HeaderText="At:" ReadOnly="True" SortExpression="Status">
                                                                                        <ItemStyle Width="80px" />
                                                                                    </asp:BoundField>
                                                                                    <asp:ButtonField CommandName="btnpart1" ItemStyle-Width="250px" ItemStyle-ForeColor="#8C1C03" Text="Agreed Performance Targets" />
                                                                                </Columns>
                                                                                <HeaderStyle ForeColor="White" />
                                                                                <PagerStyle />
                                                                                <AlternatingRowStyle />
                                                                            </asp:GridView>
                                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                                        </asp:View>
                                                                        <asp:View ID="View2" runat="server">
                                                                            <table class="table-responsive col-md-12">
                                                                                <tr>
                                                                                    <td colspan="8"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8">
                                                                                        <table class="table dt-responsive table-bordered nowrap" id="Table1" runat="server">
                                                                                            <tr style="display: none;">
                                                                                                <td style="border: thin ridge gray;">Criteria:
                                                                                                </td>
                                                                                                <td style="border: thin ridge gray;">
                                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlCriteria_SelectedIndexChanged">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="height: 10px"></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="font-size: 12px; font-weight: bold;">Agreed Performance Targets :
                                                                                                </td>
                                                                                                <td align="center" style="border: thin ridge gray;">
                                                                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                                                                    <asp:DropDownList ID="DropDownList3" Visible="false" runat="server" CssClass="form-control input-sm">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="font-size: 12px; font-weight: bold;" height="30" width="300">Performance Indicators/Proof :<br />
                                                                                                </td>
                                                                                                <td align="center" style="border: thin ridge gray;">
                                                                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30" style="font-size: 12px; font-weight: bold;">Target Changed Or Added:
                                                                                                </td>
                                                                                                <td align="center" style="border: thin ridge gray;">
                                                                                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30" style="font-size: 12px; font-weight: bold;">Remarks (<span style="font-weight: normal">Indicate Level of Achievement</span>):
                                                                                                </td>
                                                                                                <td align="center" style="border: thin ridge gray;">
                                                                                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="height: 10px"></td>
                                                                                            </tr>
                                                                                            <tr style="display: none">
                                                                                                <td style="border: thin ridge gray; font-size: 14px; font-weight: bold;" height="60">Supervisor's Comments:
                                                                                                </td>
                                                                                                <td align="center" style="border: thin ridge gray;">
                                                                                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td align="right" height="20px">
                                                                                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-sm" Text="Save" OnClick="Button1_Click" />
                                                                                                    &nbsp;&nbsp;
                                                                                                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-warning btn-sm" Text="Cancel"
                                                                                                        OnClick="Button4_Click" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8" style="height: 18px">
                                                                                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AlternatingRowStyle-CssClass="alt"
                                                                                            CssClass="mGrid" EmptyDataText="You have no objectives added." Font-Size="X-Small"
                                                                                            PagerStyle-CssClass="pgr" PageSize="30" Width="100%" AutoGenerateColumns="False"
                                                                                            DataKeyNames="No Series" DataSourceID="SqlDataSource2" OnPageIndexChanging="gvReviewObjectives_PageIndexChanging"
                                                                                            OnRowCommand="GridView2_RowCommand">
                                                                                            <Columns>
                                                                                                <asp:ButtonField Text="Edit" CommandName="btnedit">
                                                                                                    <ItemStyle Width="20px" />
                                                                                                </asp:ButtonField>
                                                                                                <asp:BoundField DataField="No Series" HeaderText="No" InsertVisible="False" ReadOnly="True"
                                                                                                    Visible="false" SortExpression="No Series">
                                                                                                    <ItemStyle Width="40px" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Criteria" HeaderText="Criteria" SortExpression="Criteria"
                                                                                                    Visible="false">
                                                                                                    <ItemStyle Width="100px" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Objectives" HeaderText="Agreed Performance Targets" SortExpression="Performance Indicator">
                                                                                                    <ItemStyle Width="80px" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Performance Indicator" HeaderText="Performance Indicators/Proof"
                                                                                                    SortExpression="Objectives">
                                                                                                    <ItemStyle Width="80px" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Target Changed Or Added" HeaderText="Target Changed Or Added"
                                                                                                    SortExpression="Target Changed Or Added">
                                                                                                    <ItemStyle Width="80px" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks">
                                                                                                    <ItemStyle Width="80px" />
                                                                                                </asp:BoundField>
                                                                                            </Columns>
                                                                                            <PagerStyle CssClass="bs-pagination" />
                                                                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                                        </asp:GridView>
                                                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8">
                                                                                        <hr />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Second Supervisor's Comments
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td colspan="8">
                                                                                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8" style="height: 10px"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Immediate Supervisor's Comments
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8">
                                                                                        <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif;">Appraisee's Comments
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8">
                                                                                        <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" align="left">
                                                                                        <asp:Button ID="Button6" runat="server" Text="Save Comments and Send to Supervisor/Appraisee"
                                                                                            CssClass="btn btn-info btn-sm" OnClick="Button6_Click" OnClientClick="return confirm('Are you sure you want to save comments and send to supervisor/Appraisee?');" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="8"></td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:View>
                                                                        <asp:View ID="View3" runat="server">
                                                                            <div class="table-responsive">
                                                                                <asp:GridView ID="gv_midtearReview" runat="server" AutoGenerateColumns="False" DataKeyNames="Appraisal_Code"
                                                                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataSourceID="MidyearReviewDataSource" EmptyDataText="You have no mid year appraisals to moderate."
                                                                                    OnRowCommand="gv_midtearReview_RowCommand" OnPageIndexChanging="gv_midtearReview_PageIndexChanging">
                                                                                    <EmptyDataRowStyle ForeColor="Red" />
                                                                                    <Columns>
                                                                                        <asp:BoundField DataField="Appraisal_Code" HeaderText="Appraisal_Code" ReadOnly="True"
                                                                                            SortExpression="Appraisal_Code" Visible="false">
                                                                                            <ItemStyle Width="80px" />
                                                                                        </asp:BoundField>
                                                                                        <asp:TemplateField HeaderText="Appraisal Code">
                                                                                            <ItemStyle Width="100px" />
                                                                                            <ItemTemplate>
                                                                                                <%--<asp:Literal ID="litActualMyApprovals" runat="server"></asp:Literal>--%>
                                                                                                <asp:Label ID="lblDocNo" runat="server" Text='<%# Bind("Appraisal_Code") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="EmployeeFullName" HeaderText="Employee Name" ReadOnly="True"
                                                                                            Visible="true">
                                                                                            <ItemStyle Width="150px" />
                                                                                        </asp:BoundField>
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
                                                                                        <asp:TemplateField HeaderText="Explored-Peer" Visible="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblExploredBySupervisor" runat="server" Text='<%# Bind("[Explored By Supervisor]") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Explored-Supervisor" Visible="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblExploredBySecondSupervisor" runat="server" Text='<%# Bind("[Explored By Second Supervisor]") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type">
                                                                                            <ItemStyle Width="100px" />
                                                                                        </asp:BoundField>
                                                                                        <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period">
                                                                                            <ItemStyle Width="100px" />
                                                                                        </asp:BoundField>
                                                                                        <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status">
                                                                                            <ItemStyle Width="80px" />
                                                                                        </asp:BoundField>
                                                                                        <asp:ButtonField CommandName="btnpart1" Text="Agreed Performance Targets" />
                                                                                    </Columns>
                                                                                    <HeaderStyle ForeColor="White" />
                                                                                    <PagerStyle />
                                                                                    <AlternatingRowStyle />
                                                                                </asp:GridView>
                                                                                <asp:SqlDataSource ID="MidyearReviewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                                            </div>
                                                                        </asp:View>
                                                                    </asp:MultiView>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Moderate Appraisals">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row" style="padding-right: 35px;">
                                                            <div class="form-group">
                                                                <button class="btn closeform" runat="server" id="btnClose2" style="float: right; color: red; display: none"><i class="fa fa-close">Close</i></button>
                                                            </div>
                                                        </div>
                                                        <div class="row" id="divModeraterAppraisals" runat="server">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvMyApprovals" runat="server" AutoGenerateColumns="False" DataKeyNames="Appraisal_Code"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataSourceID="MyAppraisalsToModerate" EmptyDataText="You have no appraisals to moderate."
                                                                        OnRowCommand="gvMyApprovals_RowCommand" OnPageIndexChanging="gvMyApprovals_PageIndexChanging" OnRowDataBound="gvMyApprovals_RowDataBound">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Appraisal_Code" HeaderText="Appraisal_Code" ReadOnly="True"
                                                                                SortExpression="Appraisal_Code" Visible="false">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="Appraisal Code">
                                                                                <ItemStyle Width="100px" />
                                                                                <ItemTemplate>
                                                                                    <asp:Literal ID="litActualMyApprovals" runat="server"></asp:Literal>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="EmployeeFullName" HeaderText="Employee Name" ReadOnly="True"
                                                                                Visible="true">
                                                                                <ItemStyle Width="150px" />
                                                                            </asp:BoundField>
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
                                                                            <asp:TemplateField HeaderText="Explored-Peer" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredBySupervisor" runat="server" Text='<%# Bind("[Explored By Supervisor]") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Explored-Supervisor" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblExploredBySecondSupervisor" runat="server" Text='<%# Bind("[Explored By Second Supervisor]") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type">
                                                                                <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period">
                                                                                <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status">
                                                                                <ItemStyle Width="80px" />
                                                                            </asp:BoundField>
                                                                            <asp:ButtonField CommandName="lbIndividualObjectives" ControlStyle-ForeColor="#8C1C03" ItemStyle-Width="250px" Text="Departmental Objectives">
                                                                                <ItemStyle Width="100px" />
                                                                            </asp:ButtonField>
                                                                            <asp:ButtonField CommandName="btnpart1" ControlStyle-ForeColor="#8C1C03" Text="Agreed Performance Targets" />
                                                                            <asp:ButtonField CommandName="btnpart2" ControlStyle-ForeColor="#8C1C03" Text="Appraisee's Values And Competencies" />
                                                                            <asp:ButtonField CommandName="btnpart5" ControlStyle-ForeColor="#8C1C03" Text="Staff Training and Development Needs" />
                                                                            <asp:ButtonField CommandName="btnpart3" ControlStyle-ForeColor="#8C1C03" Text="Future Performance Objectives" Visible="false" />
                                                                            <asp:ButtonField CommandName="btnpart4" ControlStyle-ForeColor="#8C1C03" Text="Comments And Recommendations" />
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="MyAppraisalsToModerate" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
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
                                        <div class="awidget full-width" id="divPrintAppraisal" runat="server">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvPrintMyAppraisals" runat="server" AutoGenerateColumns="False" DataKeyNames="Appraisal_Code"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataSourceID="printMyAppraisals" EmptyDataText="You have no appraisals."
                                                                        OnRowCommand="gvPrintMyAppraisals_RowCommand" OnPageIndexChanging="gvMyAppraisals_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Appraisal_Code" HeaderText="Appraisal Code" ReadOnly="True"
                                                                                SortExpression="Appraisal_Code"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Type" HeaderText="Appraisal Type" SortExpression="Appraisal_Type"></asp:BoundField>
                                                                            <asp:BoundField DataField="Appraisal_Period" HeaderText="Appraisal Period" SortExpression="Appraisal_Period"></asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status"></asp:BoundField>
                                                                            <asp:BoundField DataField="StatusValue" HeaderText="StatusValue" ReadOnly="True" SortExpression="StatusValue" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                                                            <asp:ButtonField CommandName="btnpart1" Text="Print" />
                                                                        </Columns>
                                                                        <HeaderStyle ForeColor="White" />
                                                                        <PagerStyle />
                                                                        <AlternatingRowStyle />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="printMyAppraisals" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
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
                    <div class="row" id="divMultiView1" style="padding-top: 10px; padding-left: 30px; padding-right: 30px;">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="Part1" runat="server">
                                <div class="form-horizontal">
                                    <div style="display: none;">
                                        <div style="border: thin ridge gray;">
                                            Criteria:
                                        </div>
                                        <div style="border: thin ridge gray;">
                                            <asp:DropDownList ID="ddlCriteria" runat="server" AutoPostBack="True" Height="21px"
                                                Width="98%" OnSelectedIndexChanged="ddlCriteria_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="awidget-head">
                                            <h3 style="color: #a35050;">Individual Performance Targets Derived from the Departmental/Directorate/Division/Section/Unit/Supervisor's
                                        Work Plan</h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-md-4">
                                                    Agreed Performance Targets:</label>
                                                <div class="col-md-8">
                                                    <asp:TextBox runat="server" ID="txtPerfIndicator" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                    <asp:DropDownList ID="ddlPerformanceIndicator" Visible="false" runat="server" Height="21px"
                                                        Width="98%">
                                                    </asp:DropDownList>
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
                                                    Performance Indicators/Proof:</label>
                                                <div class="col-md-8">
                                                    <asp:TextBox runat="server" ID="txtpreviousgoals" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
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
                                                    Actual Results Achieved:</label>
                                                <div class="col-md-8">
                                                    <asp:TextBox runat="server" ID="txtperformance" CssClass="form-control input-sm"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-md-4">
                                                    Agreed Actual Results Achieved:</label>
                                                <div class="col-md-8">
                                                    <asp:TextBox runat="server" ID="txtPReviewed" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-striped dt-responsive table-bordered nowrap">
                                                    <tr>
                                                        <th>Achievement of Performance Targets
                                                        </th>
                                                        <th colspan="2">Rating Scale
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <td>Achievement Higher Than 100% of the<br />
                                                            agreed performance targets
                                                        </td>
                                                        <td>Excellent
                                                        </td>
                                                        <td>101%
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Achievement Upto 100% of the<br />
                                                            agreed performance targets
                                                        </td>
                                                        <td>Very Good
                                                        </td>
                                                        <td>100%
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Achievement Between 80% - 90% of the<br />
                                                            agreed performance targets
                                                        </td>
                                                        <td>Good
                                                        </td>
                                                        <td>80% - 99%
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Achievement Between 60% - 79% of the<br />
                                                            agreed performance targets
                                                        </td>
                                                        <td>Fair
                                                        </td>
                                                        <td>60% - 79%
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Achievement Below 59% of the<br />
                                                            agreed performance targets
                                                        </td>
                                                        <td>Poor
                                                        </td>
                                                        <td>Below 59%
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-md-4">
                                                    Self Ratings:</label>
                                                <div class="col-md-8">
                                                    <span>
                                                        <asp:TextBox runat="server" ID="txtRatingPerformanceTarget" CssClass="form-control input-sm"></asp:TextBox><b>%</b>(accepted range: 0 - 200)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-md-4">
                                                    Agreed Ratings:</label>
                                                <div class="col-md-8">
                                                    <span>
                                                        <asp:TextBox runat="server" ID="txtboxAgreedRatings" CssClass="form-control input-sm"></asp:TextBox><b>%</b>(accepted range: 0 - 200)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 col-md-offset-6">
                                            <div class="form-group">
                                                <asp:Button runat="server" ID="btnsaveobjectives" OnClick="btnsaveobjectives_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Save" ValidationGroup="indicator" />
                                                <asp:Button runat="server" ID="btncancel" OnClick="btncancel_Click" CssClass="btn btn-info btn-sm"
                                                    Text="Cancel" CausesValidation="false" />
                                                <asp:Button runat="server" ID="btnDeleteObjective" OnClick="btnDeleteObjective_Click" CssClass="btn btn-warning btn-sm"
                                                    Text="Delete" CausesValidation="false" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvObjectives" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="No Series" DataSourceID="dsObjectives"
                                                        EmptyDataText="You have no Agreed targets added." OnPageIndexChanging="gvObjectives_PageIndexChanging"
                                                        OnRowCommand="gvObjectives_RowCommand">
                                                        <Columns>
                                                            <asp:ButtonField Text="Edit" CommandName="btnedit">
                                                                <ItemStyle Width="20px" />
                                                            </asp:ButtonField>
                                                            <asp:BoundField DataField="No Series" HeaderText="No" InsertVisible="False" ReadOnly="True"
                                                                Visible="false" SortExpression="No Series">
                                                                <ItemStyle Width="40px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Criteria" HeaderText="Criteria" SortExpression="Criteria"
                                                                Visible="false">
                                                                <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Objectives" HeaderText="Agreed Performance Targets" SortExpression="Performance Indicator">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Target Changed Or Added" HeaderText="Target Changed Or Added"
                                                                SortExpression="Target Changed Or Added">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Performance Indicator" HeaderText="Performance Indicators/Proof"
                                                                SortExpression="Objectives">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Target Changed Or Added" HeaderText="Target Changed Or Added"
                                                                SortExpression="Target Changed Or Added" Visible="false">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks"
                                                                Visible="false">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Performance" HeaderText="Actual Results Achieved" SortExpression="Actual Results Achieved"
                                                                ItemStyle-Width="100px">
                                                                <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Achievements Reviewed" HeaderText="Agreed Actual Results Achieved"
                                                                SortExpression="Agreed Actual Results Achieved" ItemStyle-Width="80px">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="AppraiseeRating" HeaderText="Ratings (me)" ReadOnly="True">
                                                                <ItemStyle Width="15px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="AgreedRating" HeaderText="Agreed Ratings" ReadOnly="True">
                                                                <ItemStyle Width="15px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                        <HeaderStyle ForeColor="White" />
                                                        <PagerStyle />
                                                        <AlternatingRowStyle />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="dsObjectives" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="No Series" DataSourceID="dsObjectives"
                                                        EmptyDataText="No agreed targets added." OnPageIndexChanging="gvModerateObjectives_PageIndexChanging"
                                                        OnRowCommand="gvObjectives_RowCommand">
                                                        <Columns>
                                                            <asp:ButtonField Text="Edit" CommandName="btnedit">
                                                                <ItemStyle Width="20px" />
                                                            </asp:ButtonField>
                                                            <asp:BoundField DataField="No Series" HeaderText="No" InsertVisible="False" ReadOnly="True"
                                                                Visible="false" SortExpression="No Series">
                                                                <ItemStyle Width="40px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Criteria" HeaderText="Criteria" SortExpression="Criteria"
                                                                Visible="false">
                                                                <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Objectives" HeaderText="Agreed Performance Targets" SortExpression="Performance Indicator">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Performance Indicator" HeaderText="Performance Indicators/Proof"
                                                                SortExpression="Objectives">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Target Changed Or Added" HeaderText="Target Changed Or Added"
                                                                SortExpression="Target Changed Or Added">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Performance" HeaderText="Actual Results Achieved" SortExpression="Actual Results Achieved"
                                                                ItemStyle-Width="100px">
                                                                <ItemStyle Width="100px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Achievements Reviewed" HeaderText="Agreed Actual Results Achieved"
                                                                SortExpression="Agreed Actual Results Achieved" ItemStyle-Width="80px">
                                                                <ItemStyle Width="80px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="AppraiseeRating" HeaderText="Ratings (me)" ReadOnly="True">
                                                                <ItemStyle Width="15px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="AgreedRating" HeaderText="Agreed Ratings" ReadOnly="True">
                                                                <ItemStyle Width="15px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                        <HeaderStyle ForeColor="White" />
                                                        <PagerStyle />
                                                        <AlternatingRowStyle />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">
                                                    Immediate supervisor Comments on target setting:</label>
                                                <asp:TextBox runat="server" ID="txtgoalscomments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">
                                                    Appraisee's Comments on target setting:</label>
                                                <asp:TextBox runat="server" ID="Apprraiseetxtgoals" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <asp:Button runat="server" ID="btnsavepart1" OnClick="btnsavepart1_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Save Part One Comments" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="awidget-head">
                                            <h3 style="color: #a35050;">PART ONE PERFORMANCE RATING</h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:DropDownList ID="ddlPart1ratings" runat="server" CssClass="form-control input-sm"
                                                    AppendDataBoundItems="true" Visible="false">
                                                    <asp:ListItem Value="1">1- Unsatisfactory</asp:ListItem>
                                                    <asp:ListItem Value="2">2- Development Required</asp:ListItem>
                                                    <asp:ListItem Value="3">3- Meets Expectations</asp:ListItem>
                                                    <asp:ListItem Value="4">4- Exceeds Expectations</asp:ListItem>
                                                    <asp:ListItem Value="5">5- Exceptional</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Total Appraisee Score on Performance Targets:
                                            <asp:Label ID="lblTotalRateAppraisee" runat="server" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Mean Appraisal Score:
                                            <asp:Label ID="lblAverage" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="display: none">
                                        <div class="form-group">
                                            <label class="control-label">
                                                Second Supervisor's Comments:</label>
                                            <asp:TextBox runat="server" ID="txtsupervisorcomments1" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">
                                                    Immediate Supervisor's Comments:</label>
                                                <span><i>Supervisor's Comments on the Apraisee's performance at the end of the year
                            including any factors that hindered performannce (Please indicate if the appraisee
                            requires to be put on a performance improvement plan/program. If so, indicate the
                            type) </i></span>
                                                <asp:TextBox runat="server" ID="txtPeerComments" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">
                                                    Appraisee's Comments:</label>
                                                <span><i>Appraisee's Comments on performance at the end of the year including any factors
                            that hindered performannce (Please indicate if the appraisee requires to be put
                            on a performance improvement plan/program. If so, indicate the type) </i></span>
                                                <asp:TextBox runat="server" ID="txtemployeecomments1" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="SaveFinalComments" OnClick="SaveFinalComments_Click" CssClass="btn btn-success btn-sm"
                                                Text="Save Final Comments on Target setting" />
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="Part2" runat="server">
                                <table class="table-responsive table table-striped dt-responsive table-bordered nowrap">
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <table class="table-responsive table table-striped dt-responsive table-bordered nowrap" id="editAttitude_AssessmentArea" runat="server">
                                                <tr>
                                                    <td style="font-size: 12px; font-weight: bold;">Criteria Cluster:
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlCluster" runat="server" AutoPostBack="True" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlCluster_SelectedIndexChanged1">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="height: 10px"></td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 12px; font-weight: bold;">Appraisee Values And Competencies:
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlpindicators" runat="server" AutoPostBack="True" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlpindicators_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="height: 10px"></td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td style="border: thin ridge gray;">Definition:
                                                    </td>
                                                    <td style="border: thin ridge gray;">
                                                        <asp:Label ID="lbldescription" CssClass="control-label" runat="server" Width="98%" Font-Italic="True"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td style="border: thin ridge gray;">Examples (Behaviours):
                                                    </td>
                                                    <td align="center" style="border: thin ridge gray;">
                                                        <asp:TextBox ID="txtExamples_Behaviours" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td style="border: thin ridge gray;">Ratings:
                                                    </td>
                                                    <td style="border: thin ridge gray;">
                                                        <span style="margin-left: 5px;">
                                                            <asp:TextBox ID="txtratings" runat="server" CssClass="form-control input-sm" OnTextChanged="txtratings_TextChanged"></asp:TextBox>
                                                        </span>
                                                        <asp:Label ID="lblRateDesc" CssClass="control-label" runat="server" ForeColor="Red" Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td style="border: thin ridge gray;">Agreed Ratings:
                                                    </td>
                                                    <td style="border: thin ridge gray;">
                                                        <span style="margin-left: 5px;">
                                                            <asp:TextBox ID="txtAgRatings" runat="server" CssClass="form-control input-sm" OnTextChanged="txtratings_TextChanged"></asp:TextBox>
                                                        </span>
                                                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 12px; font-weight: bold;">Immediate Supervisor's Comments:
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control input-sm">
                                                            <asp:ListItem Value="-1">Choose Appropriate Comment</asp:ListItem>
                                                            <asp:ListItem>Excellent - Higher Than 100%</asp:ListItem>
                                                            <asp:ListItem>Very Good - Upto 100%</asp:ListItem>
                                                            <asp:ListItem>Good - Between 80% and 99%</asp:ListItem>
                                                            <asp:ListItem>Fair - Between 60% and 79%</asp:ListItem>
                                                            <asp:ListItem>Poor - Below 59%</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:TextBox ID="txtIndicatorComments" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"
                                                            Visible="false"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="border: 1px solid #C0C0C0">
                                                    <td></td>
                                                    <td align="left">
                                                        <asp:Button ID="btnsavePerfomance" runat="server" CssClass="btn btn-info btn-sm" OnClick="btnsavePerfomance_Click"
                                                            Text="Save" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:GridView ID="gvPerfIndicators" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="No Series" DataSourceID="PerformanceIndicators"
                                                EmptyDataText="You have not added any attributes." OnPageIndexChanging="gvPerfIndicators_PageIndexChanging"
                                                OnRowCommand="gvPerfIndicators_RowCommand">
                                                <Columns>
                                                    <asp:ButtonField CommandName="btnedit" Text="Edit">
                                                        <ItemStyle Width="40px" />
                                                    </asp:ButtonField>
                                                    <asp:BoundField DataField="Appraisal Code" HeaderText="Appraisal Code" Visible="false"
                                                        ReadOnly="True" SortExpression="Code">
                                                        <ItemStyle Width="40px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Criteria Cluster Description" HeaderText="Criteria Cluster"
                                                        SortExpression="Criteria Cluster Description">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Interpersonal Factors Text" HeaderText="Appraisee's Values And Competencies"
                                                        SortExpression="Interpersonal Factors Text">
                                                        <ItemStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Examples Behaviours" HeaderText="Examples" ReadOnly="True"
                                                        SortExpression="Examples Behaviours" Visible="false">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="AppraiseeRating" HeaderText="Ratings (me)" ReadOnly="True"
                                                        Visible="false">
                                                        <ItemStyle Width="50px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="PeerRating" HeaderText="Ratings (Peer)" ReadOnly="True"
                                                        Visible="false">
                                                        <ItemStyle Width="30px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="SupervisorRating" HeaderText="Ratings (supervisor)" ReadOnly="True"
                                                        Visible="false">
                                                        <ItemStyle Width="30px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="AgreedRating" HeaderText="Agreed Ratings" ReadOnly="True"
                                                        Visible="false">
                                                        <ItemStyle Width="50px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Peer Comments" HeaderText="Peer Comments" ReadOnly="True"
                                                        Visible="false">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Supervisor Comments" HeaderText="Supervisor Comments"
                                                        ReadOnly="True">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <EmptyDataRowStyle ForeColor="Red" />
                                                <HeaderStyle ForeColor="White" HorizontalAlign="Center" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                                <RowStyle HorizontalAlign="Left" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="PerformanceIndicators" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="3" rowspan="2" align="center" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif;">pART TWO PERFORMANCE
                        <br />
                                            RATING<br />
                                        </td>
                                        <td align="center" style="display: none;">(5)<br />
                                            Exceptional
                                        </td>
                                        <td align="center" style="display: none;">(4)<br />
                                            Exceeds
                        <br />
                                            Expectations
                                        </td>
                                        <td align="center" style="display: none;">(3)<br />
                                            Meets
                        <br />
                                            Expectations
                                        </td>
                                        <td align="center" style="display: none;">(2)<br />
                                            Development Required
                                        </td>
                                        <td align="center" style="display: none;">(1)
                        <br />
                                            Unsatisfactory
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:CheckBox ID="ChkPB1" runat="server" Enabled="false" Visible="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="ChkPB2" runat="server" Enabled="false" Visible="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="ChkPB3" runat="server" Enabled="false" Visible="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="ChkPB4" runat="server" Enabled="false" Visible="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="ChkPB5" runat="server" Enabled="false" Visible="false" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <hr style="display: none;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="1" align="left" style="font-size: medium; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif; height: 34px;"
                                            width="280">Total Rating (me) &raquo;
                        <asp:Label ID="lblTotalRateAppraiseePart2" CssClass="control-label" runat="server" />
                                        </td>
                                        <td colspan="1" align="left" style="font-size: medium; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif; height: 34px;"
                                            width="280">Total Rating (Peer) &raquo;
                        <asp:Label ID="lblTotalRatePeerPart2" CssClass="control-label" runat="server" />
                                        </td>
                                        <td colspan="1" align="left" style="font-size: medium; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif; height: 34px;"
                                            width="280">Total Rating (sup) &raquo;
                        <asp:Label ID="lblTotalRateSupervisorPart2" CssClass="control-label" runat="server" />
                                        </td>
                                        <td colspan="1" style="height: 34px"></td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Second Supervisor's Comments
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <asp:TextBox ID="txtsupervisorcomments2" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 18px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Immediate Supervisor's Comments
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtPeerComments1" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 18px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif;">Appraisee's Comment
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtemployeescomments2" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" align="left">
                                            <asp:Button ID="btnsavepart2" runat="server" CssClass="btn btn-info btn-sm" Text="Save Part Two Comments" Width="200"
                                                Height="30" OnClick="btnsavepart2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="OverAll" runat="server">
                                <table width="98%">
                                    <tr>
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td colspan="3" rowspan="2" align="center" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif;">OVERALL PERFORMANCE
                        <br />
                                            RATING<br />
                                        </td>
                                        <td align="center">(5)<br />
                                            Exceptional
                                        </td>
                                        <td align="center">(4)<br />
                                            Exceeds
                        <br />
                                            Expectations
                                        </td>
                                        <td align="center">(3)<br />
                                            Meets
                        <br />
                                            Expectations
                                        </td>
                                        <td align="center">(2)<br />
                                            Development Required
                                        </td>
                                        <td align="center">(1)
                        <br />
                                            Unsatisfactory
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td align="center">
                                            <asp:CheckBox ID="chkA1" runat="server" Enabled="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="chkA2" runat="server" Enabled="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="chkA3" runat="server" Enabled="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="chkA4" runat="server" Enabled="false" />
                                        </td>
                                        <td align="center">
                                            <asp:CheckBox ID="chkA5" runat="server" Enabled="false" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <b>OVERALL PERFORMANCE
                            <br />
                                                RATING<br />
                                            </b>
                                        </td>
                                        <td style="text-align: center">Total Appraisee Score on Performance Targets:
                                          <br />
                                            <asp:Label ID="lblAppraiseeGrandScore" CssClass="control-label" runat="server" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        </td>
                                        <td colspan="2" style="text-align: center">Mean Appraisal Score:
                                           <br />
                                            <asp:Label ID="lblSupervisorGrandScore" CssClass="control-label" runat="server" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">
                                            <span style="background-color: white; color: black; font-weight: bold">bRIEF SUMMARY
                            BY SUPERVISOR OF THE OVERALL PERFORMANCE OF PART 1 &amp; 2</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtsupervisorcomments" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif;">
                                            <span style="background-color: white; color: black; font-weight: bold">RECOMMENDATION
                            FOR FURTHER DEVELOPMENT BY SUPERVISOR</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtrecomendations" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" align="left">
                                            <asp:Button ID="btnsaveoverall" runat="server" Text="Save Comments" CssClass="btn btn-info btn-sm"
                                                OnClick="btnsaveoverall_Click" />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">
                                            <span style="background-color: black; color: White; font-weight: bold">bRIEF SUMMARY
                            BY SUPERVISOR OF THE OVERALL PERFORMANCE OF PART 1 &amp; 2</span>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <asp:TextBox ID="TextBxPeerCmmts" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif;">
                                            <span style="background-color: black; color: White; font-weight: bold">RECOMMENDATION
                            FOR FURTHER DEVELOPMENT BY SUPERVISOR</span>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <asp:TextBox ID="txtrecomendationsByPeer" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="height: 20px"></td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif;">
                                            <span style="background-color: black; color: White; font-weight: bold">EMPLOYEE'S COMMENTS</span>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <asp:TextBox ID="txtemployeecomments" runat="server" TextMode="MultiLine"
                                                CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 30px"></td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="8" style="height: 30px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td colspan="2">Employee's Signature:
                                        </td>
                                        <td colspan="2">
                                            <asp:CheckBox ID="ckbEmployeeSign" runat="server" Enabled="false" />
                                        </td>
                                        <td colspan="2">Date:
                                        </td>
                                        <td colspan="2">
                                            <asp:Label ID="lblEmployeeSignDate" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td colspan="2">Supervisor&#8217;s Signature:
                                        </td>
                                        <td colspan="2">
                                            <asp:CheckBox ID="ckbSupervisorSign" runat="server" Enabled="false" />
                                        </td>
                                        <td colspan="2">Date:
                                        </td>
                                        <td colspan="2">
                                            <asp:Label ID="lblSupervisorSignDate" CssClass="control-label" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnsend" runat="server" Height="30px" OnClick="btnsend_Click" Width="242px"
                                                Text="Send To Immediate Supervisor" OnClientClick="return confirm('Are you certain you want to Send this application?');" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnSupervisor" runat="server" Height="30px" Text="Send To Supervisor"
                                                Width="185px" OnClick="btnSupervisor_Click" OnClientClick="return confirm('Are you certain you want to Send this application?');" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnReject" runat="server" Height="30px" Text="Send It Back For Review"
                                                Width="161px" OnClick="btnReject_Click" OnClientClick="return confirm('Are you certain you want to Send this application?');" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="viewNewTrainingNeeds" runat="server">
                                <table class="table-responsive table dt-responsive table-bordered nowrap">
                                    <tr>
                                        <td colspan="2">
                                            <span><b>Appraisee's Training and development needs in Order of priority as Identified
                            by Apraisee and Supervisor based on Performance Gaps</b></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <td align="left" height="30" width="200">
                                            <span style="font-size: 12px; font-weight: bold;">Training and development needs :</span><br />
                                            (eg.Supervisory Skills, Customer Care Skills....)
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtSkillsGap" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" style="font-size: 12px; font-weight: bold;" width="200">Duration of Training:<br />
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtSkillsExample" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" height="30" width="200">
                                            <span style="font-size: 12px; font-weight: bold;">Type of Training:</span><br />
                                            (eg.Supervisory Management cource, Customer Care Management Cource...)
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtRecommAct" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td>
                                            <asp:DropDownList ID="ddlTrainingType" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="-1">Select whether in-ouse or out-house</asp:ListItem>
                                                <asp:ListItem>In-House</asp:ListItem>
                                                <asp:ListItem>Out-House</asp:ListItem>
                                                <asp:ListItem>In-House/Out-House</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td height="30" width="300">
                                            <asp:Button ID="btnTrainingDevt" runat="server" OnClick="btnTrainingDevt_Click" CssClass="btn btn-info btn-sm"
                                                Text="Save" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:GridView ID="gvAppraisalTraining" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Entry No"
                                                EmptyDataText="You have no training needs saved." OnPageIndexChanging="gvAppraisalTraining_PageIndexChanging" OnRowCommand="gvAppraisalTraining_RowCommand"
                                                OnRowDataBound="gvAppraisalTraining_RowDataBound">
                                                <Columns>
                                                    <asp:ButtonField ButtonType="Image" CommandName="btncancel" ImageUrl="~/images/cancel.png"
                                                        Text="Cancel">
                                                        <ItemStyle Width="60px" />
                                                    </asp:ButtonField>
                                                    <asp:ButtonField CommandName="btnedit" Text="Edit">
                                                        <ItemStyle Width="40px" />
                                                    </asp:ButtonField>
                                                    <asp:BoundField DataField="Entry No" HeaderText="Entry No" InsertVisible="False"
                                                        ReadOnly="True" SortExpression="Entry No" Visible="false">
                                                        <ItemStyle Width="40px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Skills Gap" HeaderText="Training and development needs"
                                                        ItemStyle-Width="300px" />
                                                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Start Date" />
                                                    <asp:BoundField DataField="Training Type" HeaderText="Type of Training" />
                                                    <asp:BoundField DataField="inhouse or outhouse" HeaderText="Type of Training" Visible="false" />
                                                </Columns>
                                                <EmptyDataRowStyle ForeColor="Red" />
                                                <HeaderStyle ForeColor="White" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="dsAppraisalTraining" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="2" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Second Supervisor's Comments
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td colspan="2">
                                            <asp:TextBox ID="txtsupervisorcommentsSkillsGap" runat="server" CssClass="btn btn-info btn-sm" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 18px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; height: 18px; font-family: 'Times New Roman', Times, serif;">Immediate Supervisor's Comments
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtbxPeerCmts" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 18px"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-family: 'Times New Roman', Times, serif;">Appraisee's Comment
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8">
                                            <asp:TextBox ID="txtemployeescommentsSkillsGap" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 20px"></td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2">
                                            <asp:Button ID="btnsavepartSkillsGap" runat="server" CssClass="btn btn-info btn-sm" OnClick="btnsavepartSkillsGap_Click"
                                                Text="Save Training &amp; Devt. Comments" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                </table>
                                <table width="98%" style="display: none;">
                                    <tr>
                                        <td style="border: thin ridge gray;" height="30" width="300">Course Title:<br />
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtCourseTitle" runat="server" CssClass="btn btn-info btn-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: thin ridge gray;" height="30" width="300">Training Provider:<br />
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtTrainingProvider" runat="server" CssClass="btn btn-info btn-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" style="border: thin ridge gray;">Training Centre:
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtTrainingCentre" runat="server" CssClass="btn btn-info btn-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" style="border: thin ridge gray;">Training Cost:
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtTrainingCost" runat="server" CssClass="btn btn-info btn-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" style="border: thin ridge gray;">Start Date:
                                        </td>
                                        <td align="left" style="border: thin ridge gray;">
                                            <div id="datetimepicker1" class="input-append">
                                                <asp:TextBox runat="server" ID="dpTrainingStartDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" style="border: thin ridge gray;">End Date:
                                        </td>
                                        <td align="left" style="border: thin ridge gray;">
                                            <asp:TextBox runat="server" ID="dpTrainingEndDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: thin ridge gray;" height="60">Additional Comments:
                                        </td>
                                        <td align="center" style="border: thin ridge gray;">
                                            <asp:TextBox ID="txtAdditionalComments" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: thin ridge gray;"></td>
                                        <td align="right" style="border: thin ridge gray;" height="40">
                                            <asp:Button ID="btnSaveNewTraining" runat="server" CssClass="btn btn-info btn-sm"
                                                OnClick="btnSaveNewTraining_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="30px" Text="Cancel" Width="150px" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Height="30px" OnClientClick="return confirm('Are you sure you want to delete this objective?');"
                            Text="Delete" Width="150px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" style="height: 18px">
                                            <asp:GridView ID="gvNewTrainingRequests" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Entry No"
                                                EmptyDataText="You have no objectives added." DataSourceID="dsNewTrainingRequests" OnPageIndexChanging="gvNewTrainingRequests_PageIndexChanging"
                                                OnRowCommand="gvNewTrainingRequests_RowCommand">
                                                <Columns>
                                                    <asp:ButtonField Text="Edit" CommandName="btnedit">
                                                        <ItemStyle Width="40px" />
                                                    </asp:ButtonField>
                                                    <asp:BoundField DataField="Entry No" HeaderText="Entry No" InsertVisible="False"
                                                        ReadOnly="True" SortExpression="Entry No">
                                                        <ItemStyle Width="40px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Coures Title Description" HeaderText="Description" SortExpression="Coures Title Description" />
                                                    <asp:BoundField DataField="Start Date" HeaderText="Start Date" SortExpression="Start Date" />
                                                    <asp:BoundField DataField="End Date" HeaderText="End Date" SortExpression="End Date" />
                                                    <asp:BoundField DataField="Cost Of Training" HeaderText="Cost Of Training" SortExpression="Cost Of Training" />
                                                    <asp:BoundField DataField="Training Centre" HeaderText="Training Centre" SortExpression="Training Centre" />
                                                    <asp:BoundField DataField="Status Description" HeaderText="Status Description" SortExpression="Status Description" />
                                                </Columns>
                                                <EmptyDataRowStyle ForeColor="Red" />
                                                <HeaderStyle ForeColor="White" />
                                                <PagerStyle />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="dsNewTrainingRequests" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="ViewTrainingNeeds" runat="server">
                                <b>Appraisee's Training Requests</b>
                                <br />
                                <asp:GridView ID="gvViewTrainingNeeds" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="Entry No"
                                    EmptyDataText="No jobs found." DataSourceID="TrainingRequests" OnPageIndexChanging="gvViewTrainingNeeds_PageIndexChanging"
                                    OnRowCommand="gvViewTrainingNeeds_RowCommand">
                                    <Columns>
                                        <asp:ButtonField CommandName="btncancel" Text="Cancel" Visible="false" ImageUrl="~/images/cancel.png">
                                            <ItemStyle Width="40px" />
                                        </asp:ButtonField>
                                        <asp:BoundField DataField="Entry No" HeaderText="No" SortExpression="Entry No" InsertVisible="False"
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="Cost Of Training" HeaderText="Cost" SortExpression="Cost Of Training"
                                            Visible="False" />
                                        <asp:BoundField DataField="Coures Title Description" HeaderText="Title" SortExpression="Coures Title Description" />
                                        <asp:BoundField DataField="Start Date" DataFormatString="{0:d}" HeaderText="Start Date"
                                            SortExpression="Start Date" />
                                        <asp:BoundField DataField="End Date" HeaderText="End Date" SortExpression="End Date"
                                            DataFormatString="{0:d}" />
                                        <asp:BoundField DataField="Status Description" HeaderText="Status" ReadOnly="True"
                                            SortExpression="Status Description" />
                                    </Columns>
                                    <EmptyDataRowStyle ForeColor="Red" />
                                    <EmptyDataTemplate>
                                        <asp:Label ID="Label1" runat="server" Text="No Trainings Available"></asp:Label>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="TrainingRequests" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"></asp:SqlDataSource>
                            </asp:View>
                            <asp:View ID="printView" runat="server">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <iframe runat="server" id="myPDF" src="" width="100%" height="500" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <iframe runat="server" id="Iframe1" src="" width="100%" height="500" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </div>

                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-6 col-md-offset-11">
                            <div class="form-group">
                                <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                    Text="Close" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $(".ajax__tab_tab").click(function () {
                closeForm();
            });
            $(".closeform").click(function (e) {
                // some actions here
                e.preventDefault();
                closeForm();
                $(".closeform").css("display", "none");
            });
            function closeForm() {
                //alert("Handler for .click() called.");
                $("#divMultiView1").css("display", "none");
                $("[id *= divMyAppraisalList]").removeAttr('style');
                $("[id *= divModeraterAppraisals]").removeAttr('style');
                $("[id *= divPrintAppraisal]").removeAttr('style');
                //alert($(".ajax__tab_tab").attr('id'));
            }
        });
    </script>
</asp:Content>
