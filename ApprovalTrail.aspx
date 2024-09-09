<%@ Page Language="C#" AutoEventWireup="true" Title="Approval Trail" CodeBehind="ApprovalTrail.aspx.cs" MasterPageFile="~/Popup.Master" Inherits="NLC_HRMS_PORTAL.ApprovalTrail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="awidget full-width">
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="awidget-head">
                            <h3 style="color: #a35050;">Approval Trail</h3>
                        </div>
                        <div class="row">
                            <asp:Literal runat="server" ID="litViewApprovalTrail"></asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6 col-md-offset-11">
            <div class="form-group">
                <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                    Text="Close" />
            </div>
        </div>
    </div>
</asp:Content>
