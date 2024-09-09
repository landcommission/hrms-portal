<%@ Page Language="C#" AutoEventWireup="true" Title="Payslip" MasterPageFile="~/Site.Master" CodeBehind="Payslip.aspx.cs" Inherits="NLC_HRMS_PORTAL.Payslip" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Payroll > Staff Payslip</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-2">
                                    Year:</label>
                                <div class="col-md-10">
                                    <asp:DropDownList ID="ddlYear" runat="server" DataValueField="Period Year" DataTextField="Period Year" CssClass="form-control input-sm"
                                        AppendDataBoundItems="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Text="Select" Value="">  </asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlYear"
                                        SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                        ValidationGroup="Payslip">
                                    </asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                        TargetControlID="RequiredFieldValidator1">
                                    </asp:ValidatorCalloutExtender>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-2">
                                    Month:</label>
                                <div class="col-md-10">
                                    <asp:DropDownList ID="ddlMonth" runat="server" DataValueField="Period Month" DataTextField="Period Name" CssClass="form-control input-sm"
                                        AppendDataBoundItems="true">
                                        <asp:ListItem Text="Select" Value="">  </asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlMonth"
                                        SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                        ValidationGroup="Payslip">
                                    </asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                        TargetControlID="RequiredFieldValidator2">
                                    </asp:ValidatorCalloutExtender>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button runat="server" ID="btnViewPayslip" OnClick="btnViewPayslip_Click" CssClass="btn btn-info btn-sm"
                                    Text="View Payslip" ValidationGroup="Payslip" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <iframe runat="server" id="myPDF" visible="false" src="#" width="100%" height="1200px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
