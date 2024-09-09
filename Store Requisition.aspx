<%@ Page Language="C#" Title="Store Requisition" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Store Requisition.aspx.cs" Inherits="NLC_HRMS_PORTAL.Store_Requisition" %>

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
                    <h3 style="color: #a35050;">Store Requisition</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 23%">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Requisition?');" href="/Store Requisition?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Requisition</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Store Requisition?v=0" onclick="return confirm('Are you sure you want to create a new Requisition?');" runat="server" id="newApplications">
                                <div class="panel-footer">
                                    <span class="pull-left">create new requisition</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Store Requisition?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Requisitions</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Store Requisition?v=1" runat="server" id="A1">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-check-square-o fa-3x" style="color: #3C763D" href="/Store Requisition?v=2"></a>
                                        <%-- <i class="fa fa-check-square-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="postedcount">0</asp:Label>
                                        </div>
                                        <div>Pending Receipt</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Store Requisition?v=2" runat="server" id="A3">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 20%; display: none;">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-bars fa-3x" style="color: #8A6D3B" href="/Store Requisition?v=3"></a>
                                        <%--<i class="fa fa-times-circle-o fa-3x"></i>--%>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="recomendationsCount">0</asp:Label>
                                        </div>
                                        <div>Recommendation(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Store Requisition?v=3" runat="server" id="A4">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Store Requisition?v=4"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Store Requisition?v=4" runat="server" id="A2">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="form-horizontal">
                            <strong style="color: #8C1C03;">Store Requisition Form</strong>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Requistion No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequisitionNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRequisitionNo"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                TargetControlID="RequiredFieldValidator1">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Required Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker3" class="input-append">
                                                <asp:TextBox runat="server" ID="txtRequiredDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRequiredDate"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="header">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                                    TargetControlID="RequiredFieldValidator2">
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
                                            Request Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker4" class="input-append">
                                                <asp:TextBox runat="server" Enabled="false" ID="txtReqDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtReqDate"
                                                    SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                    ValidationGroup="header">
                                                </asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                    TargetControlID="RequiredFieldValidator3">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Issuing Store:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlStore" DataValueField="Code" DataTextField="Name" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="" ControlToValidate="ddlStore"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                TargetControlID="RequiredFieldValidator4">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Employee Code:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtEmpNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmpNo"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                TargetControlID="RequiredFieldValidator5">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            County:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlCountyCode" Enabled="false" DataValueField="Code" DataTextField="Name" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="" ControlToValidate="ddlCountyCode"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
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
                                        <label class="control-label col-md-4">
                                            Employee Name:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtEmpName" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmpName"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                TargetControlID="RequiredFieldValidator7">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Responsibility Centre:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtResCentre" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtResCentre"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                TargetControlID="RequiredFieldValidator8">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="display:none;">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Directorate Code:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlDirectorateCode" Enabled="false" DataValueField="Code" DataTextField="Code" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Recommender:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlRecommender" runat="server" DataValueField="UserID" DataTextField="Names" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlRecommender"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                TargetControlID="RequiredFieldValidator6">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            User ID:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequesterID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtRequesterID"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                                TargetControlID="RequiredFieldValidator13">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row" style="display: none;">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-6">
                                        Attach (Auxillliary Specifications, Description, Terms of Reference, Specifications):</label>
                                    <div class="col-md-6">
                                        <asp:LinkButton ID="lnAttachments" runat="server" CausesValidation="false" Text="Click here to view/upload attachments"
                                            OnClick="lnAttachments_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <label style="color: #8C1C03;" class="control-label">Create Item List and Submit The Requisition:</label>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-12" style="text-align: left;">
                                        Item Description:</label>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="ddlItem" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="">Please Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" InitialValue="" ControlToValidate="ddlItem"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="lines">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                            TargetControlID="RequiredFieldValidator14">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-12" style="text-align: left;">
                                        Units of Measure:</label>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="ddlUnits" Enabled="false" DataValueField="Code" DataTextField="Description" runat="server" CssClass="form-control input-sm"
                                            AppendDataBoundItems="true">
                                            <asp:ListItem Value="">Please Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" InitialValue="" ControlToValidate="ddlUnits"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="lines">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                            TargetControlID="RequiredFieldValidator15">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-12" style="text-align: left;">
                                        Quantity Requested:</label>
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" onkeypress="return isFloatNumber(this,event);" ID="txtQuantityRequested" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtQuantityRequested"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="lines">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender18"
                                            TargetControlID="RequiredFieldValidator18">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-12" style="text-align: left;">
                                        Remarks:</label>
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="txtRemarks" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <asp:Button runat="server" ID="btnAddLines" ValidationGroup="lines" OnClick="btnAddLines_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                            Text="Add Item" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvstoreReqlines" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvstoreReqlines_RowCommand"
                                        OnRowDataBound="gvstoreReqlines_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Requistion_No" HeaderText="Requistion No"
                                                SortExpression="Requistion_No" />
                                            <asp:BoundField DataField="No" HeaderText="Item No"
                                                SortExpression="No" />
                                            <asp:BoundField DataField="Description" HeaderText="Description"
                                                SortExpression="Description" />
                                            <asp:BoundField DataField="Description_2" HeaderText="Remarks"
                                                SortExpression="Description_2" />
                                            <%--<asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" SortExpression="Issuing_Store" />--%>
                                            <asp:BoundField DataField="Quantity_Requested" HeaderText="Quantity Requested"
                                                SortExpression="Quantity_Requested" />
                                            <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                <ItemStyle Width="60px" />
                                            </asp:ButtonField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>No Items Added!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12 col-md-offset-8">
                                        <asp:Button runat="server" ID="btnsubmitRequest" OnClick="btnsubmitRequest_Click" ValidationGroup="header" CssClass="btn btn-info btn-sm"
                                            Text="Send For Approval" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                    </asp:View>
                    <asp:View ID="MyRequisitions" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">My Store Requisitions</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMyRequisition" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridMyRequisition_RowCommand"
                                            OnRowDataBound="gridMyRequisition_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                                <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                                <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                                <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Current Approver">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="litApprover" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Item(s) List">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWAPPROVALTRAIL" ControlStyle-ForeColor="#A66D03" Text="View Approval Trail">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="BTNVIEWCOMMENTS" ControlStyle-ForeColor="#A66D03" Text="View Comments">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>You have no Store requisitions(s).</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="form-horizontal">
                                <hr />
                                <strong style="color: #8C1C03;" id="receivedrejected" runat="server"></strong>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="gridreceivedrejected" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridreceivedrejected_RowCommand">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="#">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="No" HeaderText="No" />
                                                    <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                                    <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                                    <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                                    <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                                    <asp:BoundField DataField="Received_Rejected" Visible="false" HeaderText="Received/Rejected" />
                                                    <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Received/Returned Item(s)"></asp:ButtonField>
                                                </Columns>
                                                <PagerStyle CssClass="bs-pagination" />
                                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                <EmptyDataTemplate>No Received/Returned Store requisitions Available.</EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="posted" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;" id="lblpostedcount" runat="server">Posted Store Requisitions List</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridPostedRequisition" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridPostedRequisition_RowCommand"
                                            OnRowDataBound="gridPostedRequisition_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                                <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                                <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                                <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Requested Items"></asp:ButtonField>
                                                <asp:TemplateField HeaderText="Action" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control input-sm"
                                                            AppendDataBoundItems="true">
                                                            <asp:ListItem Value="">Please Select</asp:ListItem>
                                                            <asp:ListItem Value="Received">Receive</asp:ListItem>
                                                            <asp:ListItem Value="Rejected">Reject</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:ButtonField CommandName="BTNSUBMIT" Visible="false" ButtonType="Button" ControlStyle-ForeColor="#A66D03" Text="Submit"></asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>No Posted Store requisitions Available.</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </asp:View>
                    <asp:View ID="recommend" runat="server">
                        <strong style="color: #8C1C03;">Store Requisitions For Recommendation</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gridRecommendation" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvApprovalls_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#A66D03" Text="Recommendation Form" CommandName="ViewApplication"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewRecomForm_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Line_No" HeaderText="Line_No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                            <asp:BoundField DataField="Document_No" HeaderText="Document_No" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Sender_ID" HeaderText="Sender ID" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Date_Time_Sent_for_Approval" HeaderText="Date sent for Approval" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>You have no Store requisition awaiting your Recommedation.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Approvals" runat="server">
                        <strong style="color: #8C1C03;">Store Requisitions For Approval</strong>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvApprovalls" runat="server" AutoGenerateColumns="False" DataKeyNames="Entry_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvApprovalls_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#A66D03" Text="Approval Form" CommandName="ViewApplication"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnViewApp_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Entry_No" HeaderText="Entry_No" ReadOnly="True" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                            <asp:BoundField DataField="Document_No" HeaderText="Document_No" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Sender_ID" HeaderText="Sender ID" ReadOnly="True"></asp:BoundField>
                                            <asp:BoundField DataField="Date_Time_Sent_for_Approval" HeaderText="Date sent for Approval" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="bs-pagination" />
                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                        <EmptyDataTemplate>You have no Store requisition awaiting your approval.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="ViewDetails" runat="server">
                        <div class="form-horizontal">
                            <strong style="color: #8C1C03;">Store Requisition:</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridSRHeader" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridSRHeader_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                                <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                                <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                                <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Requested Items">
                                                    <ItemStyle Width="100px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>Purchase Requisition Header not found!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="row" style="float: right">
                                    <div class="col-md-11">
                                        <div class="table-responsive">
                                            <asp:LinkButton ID="lbApproverAttachments" runat="server" Text="View Attachments"
                                                OnClick="lbApproverAttachments_Click" />
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label col-md-4">
                                                Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7">
                                                <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Approve" OnClientClick="return confirm('Are you certain you want to Approve this request?');" />
                                                <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-warning btn-sm"
                                                    Text="Reject" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this request?');" />
                                                <asp:Button runat="server" ID="btnClose" OnClick="btnClose_Click" CssClass="btn btn-default btn-sm"
                                                    Text="Close" CausesValidation="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('[id *=ddlItem]').select2();
            $('[id *=ddlItem]').on('change', function () {
                var item = $(this).val();
                var unitOfMeasure = item.substring(item.indexOf(":") + 1);
                $('[id *=ddlUnits]').val(unitOfMeasure);
            });
        });
        function isFloatNumber(e, t) {
            var n;
            var r;
            if (navigator.appName == "Microsoft Internet Explorer" || navigator.appName == "Netscape") {
                n = t.keyCode;
                r = 1;
                if (navigator.appName == "Netscape") {
                    n = t.charCode;
                    r = 0
                }
            } else {
                n = t.charCode;
                r = 0
            }
            if (r == 1) {
                if (!(n >= 48 && n <= 57 || n == 46)) {
                    t.returnValue = false
                }
            } else {
                if (!(n >= 48 && n <= 57 || n == 0 || n == 46)) {
                    t.preventDefault()
                }
            }
        }
    </script>
</asp:Content>
