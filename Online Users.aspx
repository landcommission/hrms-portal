<%@ Page Language="C#" AutoEventWireup="true" Title="Online User" MasterPageFile="~/Site.Master" CodeBehind="Online Users.aspx.cs" Inherits="NLC_HRMS_PORTAL.Online_Users" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12 form-horizontal">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Online Users</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label col-md-3" style="font-size: 14px; color: #343d46;">
                                Employee No:</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtEmpNo" onkeyup="this.value=this.value.toUpperCase()" runat="server" PlaceHolder="NLC003456" CssClass="form-control input-sm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" PlaceHolder="NLC003456" runat="server" ControlToValidate="txtEmpNo"
                                    SetFocusOnError="True" ErrorMessage="ID or Passport number Required!" ForeColor="Red" Display="None"
                                    ValidationGroup="Reset">
                                </asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                    TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label col-md-3" style="font-size: 14px; color: #343d46;">
                                ID Number:</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtIDNo" runat="server" PlaceHolder="11324567" CssClass="form-control input-sm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIDNo"
                                    SetFocusOnError="True" ErrorMessage="ID or Passport number Required!" ForeColor="Red" Display="None"
                                    ValidationGroup="Reset">
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
                            <label class="control-label col-md-3" style="font-size: 14px; color: #343d46;">
                                Email Address:</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtEmail" runat="server" PlaceHolder="myemail@landcommission.go.ke" CssClass="form-control input-sm">                                          
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                    SetFocusOnError="True" ErrorMessage="password Required!" ForeColor="Red" Display="None"
                                    ValidationGroup="Reset">
                                </asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                    TargetControlID="RequiredFieldValidator3">
                                </asp:ValidatorCalloutExtender>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <div class="col-md-offset-4">
                                <asp:Button runat="server" ID="btnResetPassword" OnClick="btnResetPassword_Click" ValidationGroup="Reset" CssClass="btn btn-warning btn-sm" Text="Reset Password" />
                                <asp:Button runat="server" ID="btnCreateUser" OnClick="btnCreateUser_Click" ValidationGroup="Reset" CssClass="btn btn-success btn-sm" Text="Create User" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
