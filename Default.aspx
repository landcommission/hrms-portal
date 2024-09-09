<%@ Page Title="Login" Language="C#" MasterPageFile="~/LoginX.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NLC_HRMS_PORTAL._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page content -->
    <div class="container" style="min-height: 480px;">
        <div class="awidget login-reg">
            <div class="page-title text-center">
                <h1>
                    <a href="">
                        <img src="/Img/Logo.png" width="100" alt="logo" class="logo-default hidden-sm hidden-xs" />
                       <%--<img src="/Img/SK_Logo_1.png" width="200" alt="logo" class="logo-default hidden-sm hidden-xs" />--%>
                    </a>
                </h1>
            </div>
            <div class="awidget-body" style="padding: 0px 0px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="Login" runat="server">
                        <div class="page-title text-center">
                            <h3>Login</h3>
                            <hr />
                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <asp:Label runat="server" ID="lblStatus" CssClass="label label-success" Font-Size="Small" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label style="font-size: 12px; color: #343d46; float: left;">
                                        Employee No:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtUserName" runat="server" onkeyup="this.value=this.value.toUpperCase()" PlaceHolder="NLC003456" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                                            SetFocusOnError="True" ErrorMessage="Employee number Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="LogIn">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                            TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label style="font-size: 12px; color: #343d46; float: left;">
                                        Password:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        <div class="input-group-append">
                                            <button id="show_password" class="btn btn-primary" type="button">
                                                <span class="fa fa-eye-slash icon"></span>
                                            </button>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                            SetFocusOnError="True" ErrorMessage="password Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="LogIn">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                            TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_Click" ValidationGroup="LogIn" CssClass="btn btn-primary" Text="Login"/>
                                        <asp:Button runat="server" ID="btnGoToResetFromLogin" OnClick="btnGoToResetFromLogin_Click" CausesValidation="false" CssClass="btn btn-default" Text="Reset Password" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Reset" runat="server">
                        <div class="page-title text-center">
                            <h3>Reset Password</h3>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <label style="font-size: 12px; color: #343d46; float: left;">
                                        Employee No:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtEmpNo" runat="server" onkeyup="this.value=this.value.toUpperCase()" PlaceHolder="NLC003456" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" PlaceHolder="NLC003456" runat="server" ControlToValidate="txtEmpNo"
                                            SetFocusOnError="True" ErrorMessage="Employee number Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Reset">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                            TargetControlID="RequiredFieldValidator3">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label style="font-size: 12px; color: #343d46; float: left;">
                                        ID Number:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtIDNo" runat="server" PlaceHolder="11324567" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIDNo"
                                            SetFocusOnError="True" ErrorMessage="ID or Passport number Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Reset">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                            TargetControlID="RequiredFieldValidator4">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label style="font-size: 12px; color: #343d46; float: left;">
                                        Email Address:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtEmail" runat="server" PlaceHolder="myemail@landcommission.go.ke" CssClass="form-control input-sm">                                          
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                                            SetFocusOnError="True" ErrorMessage="Email Address Is Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Reset">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                            TargetControlID="RequiredFieldValidator5">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btnResetPassword" OnClick="btnResetPassword_Click" ValidationGroup="Reset" CssClass="btn btn-primary" Text="Reset Password" />
                                        <asp:Button runat="server" ID="btnGoToLogin" OnClick="btnGoToLogin_Click" CausesValidation="false" CssClass="btn btn-default" Text="Login" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            //window.location.reload(true);
            /* if my "reload" var isn't set locally.. getItem will be false */
            if (!localStorage.getItem("reload")) {
                /* set reload to true and then reload the page */
                localStorage.setItem("reload", "true");
                location.reload();
            }
            /* after reloading remove "reload" from localStorage */
            else {
                localStorage.removeItem("reload");
                // localStorage.clear(); // or clear it, instead
            }
        });
    </script>
</asp:Content>
