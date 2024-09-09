<%@ Page Language="C#" Title="Employee Card" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="EmployeeCard.aspx.cs" Inherits="NLC_HRMS_PORTAL.EmployeeCard" %>

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
                    <h3 style="color: #a35050;">My Employee Card</h3>
                </div>
                <div class="awidget-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle col-md-12 m-r-0 m-l-0"
                                ActiveTabIndex="0">
                                <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="General Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My General Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Employee Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtEmplNum" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        ID Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtID_Number" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Passport Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtPasPort_Number" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        First Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtFirstName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Middle Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtMiddleName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Last Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtLastName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Citizenship:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlCitizenship" runat="server" Enabled="false" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Department:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlDeptCode" runat="server" Enabled="false" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        County:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlCounty_Code" runat="server" Enabled="false" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Postal Address:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtPostalAddress" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        City:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtCity" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        User ID:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtUserID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Status:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtStatus" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Modified Date:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtLastModifiedDate" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Communication Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Communication Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Cell Phone Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtCellPhoneNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Official Phone Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtWorkPhoneNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Official E-mail:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtCompanyEmail" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Personal E-mail:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtPersonalEmail" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Personal Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Personal Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Gender:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlGender" runat="server" Enabled="false" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Text="Select Gender" Value="NULL" />
                                                                            <asp:ListItem Text="Male" Value="1" />
                                                                            <asp:ListItem Text="Female" Value="2" />
                                                                            <asp:ListItem Text="Other" Value="3" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Marital Status:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlMaritalStatus" runat="server" Enabled="false" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Text="Select Marital Status" Value="NULL" />
                                                                            <asp:ListItem Text="Single" Value="1" />
                                                                            <asp:ListItem Text="Married" Value="2" />
                                                                            <asp:ListItem Text="Separated" Value="3" />
                                                                            <asp:ListItem Text="Divorced" Value="4" />
                                                                            <asp:ListItem Text="Widow(er)" Value="5" />
                                                                            <asp:ListItem Text="Other" Value="6" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Religion:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlReligion" runat="server" DataValueField="Code" DataTextField="Description" Enabled="false" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        No. of Dependants:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtNo_Of_Dependants" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        First Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlFirstLanguage" runat="server" DataValueField="Code" DataTextField="Description" Enabled="false" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        1<sup>st</sup> Language Abilities:</label>
                                                                    <div class="col-md-8">
                                                                        <label class="control-label">Read: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbFL_Read" runat="server" />
                                                                        <label class="control-label">Write: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbFL_Write" runat="server" />
                                                                        <label class="control-label">Speak: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbFL_Speak" runat="server" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Second Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlSecondLanguage" runat="server" DataValueField="Code" DataTextField="Description" Enabled="false" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        2<sup>nd</sup> Language Abilities:</label>
                                                                    <div class="col-md-8">
                                                                        <label class="control-label">Read: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbSL_Read" runat="server" />
                                                                        <label class="control-label">Write: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbSL_Write" runat="server" />
                                                                        <label class="control-label">Speak: </label>
                                                                        <asp:CheckBox Width="5%" ID="cbSL_Speak" runat="server" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Additional Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtAdditionalLanguage" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Vehicle Registration No:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtVehicleRegNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Important Dates">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Important Dates</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date of Birth:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtDateOfBirth" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Age:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtAge" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date of Joining the Company:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtDateOfJoin" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Days to Retirement:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtDaysToRetirement" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Retirement Date:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtDateOfRetirement" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Job Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Current Job Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Job ID:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtJobId" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Grade:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtJobGrade" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Job Title:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtJobTitle" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Incremental Month:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtIncrementalMonth" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">Job Details Change History</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="grdEmployeeInfoChange" runat="server" AutoGenerateColumns="False"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="County_Name" HeaderText="County Name." ReadOnly="True"></asp:BoundField>
                                                                            <asp:BoundField DataField="Global_Dimension_2_Code" HeaderText="Directorate Codes." ReadOnly="True"></asp:BoundField>
                                                                            <asp:BoundField DataField="Department_Name" HeaderText="Department Name." />
                                                                            <asp:BoundField DataField="Responsibility_Center" HeaderText="Responsibility Center"></asp:BoundField>
                                                                            <asp:BoundField DataField="Job_ID" HeaderText="Job ID." />
                                                                            <asp:BoundField DataField="Job_Title" HeaderText="Job Title"></asp:BoundField>
                                                                            <asp:BoundField DataField="Salary_Grade" HeaderText="Salary Grade"></asp:BoundField>
                                                                            <asp:BoundField DataField="Payroll_Period" HeaderText="Payroll Period"></asp:BoundField>
                                                                            <asp:BoundField DataField="Reason" HeaderText="Reason"></asp:BoundField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No employee information change available.</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel6" runat="server" HeaderText="Statutory Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Statutory Information</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        PIN Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtPIN" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        NSSF Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtNSSF" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        NHIF Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtNHIF" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
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
                                <asp:TabPanel ID="TabPanel7" runat="server" HeaderText="My Banks">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Bank Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gridBanks" runat="server" AutoGenerateColumns="False" DataKeyNames="Bank  Code"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Bank Name" HeaderText="Bank Name." ReadOnly="True"></asp:BoundField>
                                                                            <asp:BoundField DataField="Branch Code" HeaderText="Branch Code." ReadOnly="True"></asp:BoundField>
                                                                            <asp:BoundField DataField="Branch Name" HeaderText="Branch Name." />
                                                                            <asp:BoundField DataField="A_C  Number" HeaderText="Account  Number" DataFormatString="{0:0}"></asp:BoundField>
                                                                            <asp:BoundField DataField="From payroll Period" HeaderText="Payroll Period From." DataFormatString="{0:dd-MMM-yyyy}" />
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Banks</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel8" runat="server" HeaderText="Attachments">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">Attachments List</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvAttachments" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                        EmptyDataText="You do not have any attachments at the moment"
                                                                        OnPageIndexChanging="gvAttachments_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code"
                                                                                ReadOnly="True"></asp:BoundField>
                                                                            <asp:BoundField DataField="Description" HeaderText="Description"
                                                                                SortExpression="Description" />
                                                                            <asp:TemplateField HeaderText="Download">
                                                                                <ItemTemplate>
                                                                                    <asp:HyperLink ID="hlDescription" runat="server" ForeColor="Green" NavigateUrl='<%#Eval("URL", "{0}")%>'
                                                                                        Target="_blank" Text='<%# Eval("Description", "{0}")%>' ToolTip='<%# Eval("Description", "{0}")%>'>
                                                                                    </asp:HyperLink>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="True" ForeColor="Green" HorizontalAlign="Left"></ItemStyle>
                                                                            </asp:TemplateField>
                                                                            <asp:CommandField SelectText="Delete" ShowSelectButton="True">
                                                                                <ItemStyle ForeColor="Red" />
                                                                            </asp:CommandField>
                                                                        </Columns>
                                                                        <EmptyDataRowStyle ForeColor="Red" />
                                                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                                                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                                                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                                                        <SortedDescendingHeaderStyle BackColor="#93451F" />
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
                                <asp:TabPanel ID="TabPanel9" runat="server" HeaderText="Next Of Kin">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">Next Of Kin/Beneficiaries/Dependents/Siblings/In-Laws/Parents</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvNOK" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                        EmptyDataText="No Records Found" OnPageIndexChanging="gvNOK_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                                                            <asp:BoundField DataField="Relationship" HeaderText="Relationship"
                                                                                SortExpression="Relationship" />
                                                                            <asp:BoundField DataField="Full Name" HeaderText="Full Name" SortExpression="Full Name" />
                                                                            <asp:BoundField DataField="ID No_Passport No" HeaderText="ID No_Passport No"
                                                                                SortExpression="ID No_Passport No" />
                                                                            <asp:BoundField DataField="Date Of Birth" HeaderText="Date Of Birth"
                                                                                SortExpression="Date Of Birth" />
                                                                            <asp:BoundField DataField="Percentage Shares"
                                                                                HeaderText="Percentage Shares" />
                                                                            <asp:BoundField DataField="Home Tel No" HeaderText="Home Tel No" />
                                                                            <asp:CommandField SelectText="Delete" Visible="false" ShowSelectButton="True">
                                                                                <ItemStyle ForeColor="Red" />
                                                                            </asp:CommandField>
                                                                        </Columns>
                                                                        <EmptyDataRowStyle ForeColor="Red" />
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
                                <asp:TabPanel ID="TabPanel10" runat="server" HeaderText="Education">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Education Background</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvEDU" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                        EmptyDataText="No Records Found" OnPageIndexChanging="gvEDU_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Institution_Company"
                                                                                HeaderText="Institution_Company" SortExpression="Institution_Company" />
                                                                            <asp:BoundField DataField="Qualification Type" HeaderText="Qualification Type"
                                                                                SortExpression="Qualification Type" />
                                                                            <asp:BoundField DataField="Description" HeaderText="Description"
                                                                                SortExpression="Description" />
                                                                            <asp:BoundField DataField="From Date" HeaderText="From Date"
                                                                                SortExpression="From Date" />
                                                                            <asp:BoundField DataField="To Date" HeaderText="To Date"
                                                                                SortExpression="To Date" />
                                                                            <asp:CommandField SelectText="Delete" Visible="false" ShowSelectButton="True">
                                                                                <ControlStyle ForeColor="Green" />
                                                                            </asp:CommandField>
                                                                        </Columns>
                                                                        <EmptyDataRowStyle ForeColor="Red" />
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
                                <asp:TabPanel ID="TabPanel11" runat="server" HeaderText="Employment">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Employment History</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvEmpHistory" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                        EmptyDataText="No Records Found" OnPageIndexChanging="gvEmpHistory_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Name of Previous Employer"
                                                                                HeaderText="Name of Previous Employer"
                                                                                SortExpression="Name of Previous Employer" />
                                                                            <asp:BoundField DataField="Date Employed" HeaderText="Date Employed"
                                                                                SortExpression="Date Employed" />
                                                                            <asp:BoundField DataField="Title" HeaderText="Title"
                                                                                SortExpression="Title" />
                                                                            <asp:BoundField DataField="Description of Duties" HeaderText="Description of Duties"
                                                                                SortExpression="Description of Duties" />
                                                                            <asp:BoundField DataField="Salary" HeaderText="Salary"
                                                                                SortExpression="Salary" />
                                                                            <asp:BoundField DataField="Reason for Leaving" HeaderText="Reason for Leaving"
                                                                                SortExpression="Reason for Leaving" />
                                                                            <asp:CommandField SelectText="Delete" Visible="false" ShowSelectButton="True">
                                                                                <ControlStyle ForeColor="Green" />
                                                                            </asp:CommandField>
                                                                        </Columns>
                                                                        <EmptyDataRowStyle ForeColor="Red" />
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
                                <asp:TabPanel ID="TabPanel12" runat="server" HeaderText="Referees">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3 style="color: #a35050;">My Referees</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gvReferees" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46"
                                                                        EmptyDataText="No Records Found" OnPageIndexChanging="gvReferees_PageIndexChanging">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Full Name" HeaderText="Full Name"
                                                                                SortExpression="Full Name" />
                                                                            <asp:BoundField DataField="Address" HeaderText="Address"
                                                                                SortExpression="Address" />
                                                                            <asp:BoundField DataField="Telephone" HeaderText="Telephone"
                                                                                SortExpression="Telephone" />
                                                                            <asp:BoundField DataField="Business_Occupation"
                                                                                HeaderText="Business_Occupation" SortExpression="Business_Occupation" />
                                                                            <asp:CommandField SelectText="Delete" Visible="false" ShowSelectButton="True">
                                                                                <ControlStyle ForeColor="Green" />
                                                                            </asp:CommandField>
                                                                        </Columns>
                                                                        <EmptyDataRowStyle ForeColor="Red" />
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
                            </asp:TabContainer>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $(".ajax__tab_tab").css("font-size", "11px");
        });
    </script>
</asp:Content>
