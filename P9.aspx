<%@ Page Language="C#" AutoEventWireup="true" Title="P9-Form" MasterPageFile="~/Site.Master" CodeBehind="P9.aspx.cs" Inherits="NLC_HRMS_PORTAL.P9" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Payroll > Staff P9</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-2">
                                    Year:</label>
                                <div class="col-md-10">
                                    <asp:DropDownList ID="ddlYear" runat="server" DataValueField="Period Year" DataTextField="Period Year" CssClass="form-control input-sm"
                                        AppendDataBoundItems="true">
                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlYear"
                                        SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                        ValidationGroup="P_9">
                                    </asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                        TargetControlID="RequiredFieldValidator1">
                                    </asp:ValidatorCalloutExtender>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button runat="server" ID="btnViewP9" OnClick="btnViewP9_Click" CssClass="btn btn-info btn-sm"
                                    Text="View P-9 Form" ValidationGroup="P_9" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <span style="font-size: 10pt">
                            <iframe runat="server" id="myPDF" visible="false" src="#" width="100%" height="900" />
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
