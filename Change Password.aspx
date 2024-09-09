<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" Title="Change Password" CodeBehind="Change Password.aspx.cs" Inherits="NLC_HRMS_PORTAL.Change_Password" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page content -->
    <div class="page-title text-center">
        <h3>Change Your Password</h3>
        <hr />
    </div>
    <div class="awidget-body">
        <div class="row">
            <div class="col-md-3">
                <div class="col-md-12">
                    <label class="control-label" style="text-align: left;">
                        Current Password:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtCurrentpassword" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <div class="input-group-append">
                            <button id="show_passwordCurrentPass" class="btn btn-primary" type="button">
                                <span class="fa fa-eye-slash icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-12">
                    <label class="control-label" style="text-align: left;">
                        New Password:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtNewPassword" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <div class="input-group-append">
                            <button id="show_passwordNewPass" class="btn btn-primary" type="button">
                                <span class="fa fa-eye-slash icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-12">
                    <label class="control-label" style="text-align: left;">
                        Confirm New Password:</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtConfirmNewPass" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <div class="input-group-append">
                            <button id="show_passwordConfirmPass" class="btn btn-primary" type="button">
                                <span class="fa fa-eye-slash icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3" style="padding-top: 25px;">
                <div class="form-group">
                    <asp:Button runat="server" ID="btnChangePassword" OnClick="btnChangePassword_Click" ValidationGroup="ChangePass" CssClass="btn btn-info" Text="Change Password" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Current" runat="server" ControlToValidate="txtCurrentpassword"
                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                    ValidationGroup="ChangePass">
                </asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender_Current"
                    TargetControlID="RequiredFieldValidator_Current">
                </asp:ValidatorCalloutExtender>
            </div>
            <div class="col-md-3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_New" runat="server" ControlToValidate="txtNewPassword"
                    SetFocusOnError="True" ErrorMessage="Current password is Required!" ForeColor="Red" Display="None"
                    ValidationGroup="ChangePass">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExpValidator_New" ErrorMessage="The new password must have minimum of 8 characters</br> with at least one numeric character. e.g Pass#123"
                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'$@&#.\s]{8,20}" ControlToValidate="txtNewPassword" runat="server" ValidationGroup="ChangePass">
                </asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender_New"
                    TargetControlID="RequiredFieldValidator_New">
                </asp:ValidatorCalloutExtender>
            </div>
            <div class="col-md-3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Confirm" runat="server" ControlToValidate="txtConfirmNewPass"
                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                    ValidationGroup="ChangePass">
                </asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender_Confirm"
                    TargetControlID="RequiredFieldValidator_Confirm">
                </asp:ValidatorCalloutExtender>
                <asp:CompareValidator ID="comparePasswords"
                    runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPass" ForeColor="Red"
                    ErrorMessage="This password does not match the new password you entered!" ValidationGroup="ChangePass"></asp:CompareValidator>
                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                    TargetControlID="comparePasswords">
                </asp:ValidatorCalloutExtender>
            </div>
        </div>
    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('#show_passwordCurrentPass').hover(function show() {
                //Change the attribute to text  
                $('[id *= txtCurrentpassword]').attr('type', 'text');
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },
                function () {
                    //Change the attribute back to password  
                    $('[id *= txtCurrentpassword]').attr('type', 'password');
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                });
            $('#show_passwordNewPass').hover(function show() {
                //Change the attribute to text  
                $('[id *= txtNewPassword]').attr('type', 'text');
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },
                function () {
                    //Change the attribute back to password  
                    $('[id *= txtNewPassword]').attr('type', 'password');
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                });
            $('#show_passwordConfirmPass').hover(function show() {
                //Change the attribute to text  
                $('[id *= txtConfirmNewPass]').attr('type', 'text');
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },
                function () {
                    //Change the attribute back to password  
                    $('[id *= txtConfirmNewPass]').attr('type', 'password');
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                });
        });
    </script>
</asp:Content>
