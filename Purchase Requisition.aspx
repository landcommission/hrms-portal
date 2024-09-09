<%@ Page Language="C#" Title="Purchase Requisition" AutoEventWireup="true" CodeBehind="Purchase Requisition.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Purchase_Requisition" %>

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
                    <h3 style="color: #a35050;">Purchase Requisition</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to create a new Requisition?');" href="/Purchase Requisition.aspx?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Requisition</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Purchase Requisition.aspx?v=0" onclick="return confirm('Are you sure you want to create a new Requisition?');" runat="server" id="newApplications">
                                <div class="panel-footer">
                                    <span class="pull-left">Click here to create a new requisition</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Purchase Requisition.aspx?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Requisitions</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Purchase Requisition.aspx?v=1" runat="server" id="A1">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <a class="fa fa-database fa-3x" style="color: #333333" href="/Purchase Requisition.aspx?v=2"></a>
                                    </div>
                                    <div class="col-xs-10 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="ApprovalReqCount">0</asp:Label>
                                        </div>
                                        <div>Approval Request(s)</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Purchase Requisition.aspx?v=2" runat="server" id="A2">
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
                            <strong style="color: #8C1C03;">Transport Requisition Header</strong>
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
                                            Directorate Code:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlDirectorateCode" DataValueField="Code" DataTextField="Code" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="" ControlToValidate="ddlDirectorateCode"
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
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Request Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker3" class="input-append">
                                                <asp:TextBox runat="server" ID="txtReqDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
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
                                            Responsibility Centre:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtResCentre" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtResCentre"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                                TargetControlID="RequiredFieldValidator12">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Required Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker1" class="input-append">
                                                <asp:TextBox runat="server" ID="txtRequiredDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRequiredDate"
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Request Description:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtReqDesc" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtReqDesc"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                TargetControlID="RequiredFieldValidator6">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Employee No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtEmpNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtEmpNo"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                                TargetControlID="RequiredFieldValidator15">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            County:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlCountyCode" DataValueField="Code" DataTextField="Name" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" InitialValue="" ControlToValidate="ddlCountyCode"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender19"
                                                TargetControlID="RequiredFieldValidator19">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtEmpName"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender17"
                                                TargetControlID="RequiredFieldValidator17">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Store:</label>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="ddlStore" DataValueField="Code" DataTextField="Name" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" InitialValue="" ControlToValidate="ddlStore"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                                TargetControlID="RequiredFieldValidator10">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Requester ID:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequesterId" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtRequesterId"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="header">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender16"
                                                TargetControlID="RequiredFieldValidator16">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
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
                            <label style="color: #8C1C03;">Purchase Requisition Lines:</label>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Type (Asset/Item):</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlActionType" runat="server" OnSelectedIndexChanged="ddlActionType_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">---Please Select---</asp:ListItem>
                                                <asp:ListItem Value="Item">Item</asp:ListItem>
                                                <asp:ListItem Value="Asset">Asset</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" InitialValue="" ControlToValidate="ddlActionType"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender18"
                                                TargetControlID="RequiredFieldValidator18">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Item/Asset Name:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlItem" DataValueField="No" onchange="getUnitsOfMeasure(this)" DataTextField="Description" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="" ControlToValidate="ddlItem"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                                TargetControlID="RequiredFieldValidator13">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Units of Measure:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlUnits" DataValueField="Code" DataTextField="Description" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" InitialValue="" ControlToValidate="ddlUnits"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender23"
                                                TargetControlID="RequiredFieldValidator23">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Procurement Plan Line No:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtProcplanlineNo" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtProcplanlineNo"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                TargetControlID="RequiredFieldValidator4">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Remarks:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtRemarks" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtRemarks"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender25"
                                                TargetControlID="RequiredFieldValidator25">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Quantity:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtQuantity" onkeypress="return isFloatNumber(this,event);" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtQuantity"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                                TargetControlID="RequiredFieldValidator14">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Approximate Unit Cost:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" onkeypress="return isFloatNumber(this,event);" ID="txtUnitCost" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtUnitCost"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender24"
                                                TargetControlID="RequiredFieldValidator24">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Approximate Line Amount:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtLineAmount" ReadOnly="true" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtLineAmount"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender26"
                                                TargetControlID="RequiredFieldValidator26">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4" style="padding-top: 30px">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddLines" ValidationGroup="lines" OnClick="btnAddLines_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default"
                                                Text="Add Line" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvpurchaselines" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gvpurchaselines_RowCommand"
                                            OnRowDataBound="gvpurchaselines_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Requistion_No" HeaderText="Requistion No."
                                                    SortExpression="Requistion_No" />
                                                <asp:BoundField DataField="No" HeaderText="Item No."
                                                    SortExpression="No" />
                                                <asp:BoundField DataField="Description" HeaderText="Description"
                                                    SortExpression="Description" />
                                                <asp:BoundField DataField="Description_2" HeaderText="Remarks"
                                                    SortExpression="Description_2" />
                                                <asp:BoundField DataField="Quantity" HeaderText="Quantity Requested"
                                                    SortExpression="Quantity" />
                                                <asp:BoundField DataField="Unit_Cost" HeaderText="Approximate Unit Cost"
                                                    SortExpression="Unit_Cost" />
                                                <asp:BoundField DataField="Line_Amount" HeaderText="Approximate Line Amount"
                                                    SortExpression="Line_Amount" />
                                                <asp:BoundField DataField="Procurement_Plan_Item_No" HeaderText="Procurement Plan Item No"
                                                    SortExpression="Procurement_Plan_Item_No" />
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
                                                Text="Submit Requisition" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                        </div>
                    </asp:View>
                    <asp:View ID="MyRequisitions" runat="server">
                        <div class="form-horizontal">
                            <strong style="color: #8C1C03;">My Purchase Requisitions</strong>
                            <hr />
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
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Action_Type" HeaderText="Type" />
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
                                            <EmptyDataTemplate>You have no purchase requisitions(s).</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="Approvals" runat="server">
                        <strong style="color: #8C1C03;">Purchase Requisitions For Approval</strong>
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
                                                    <asp:LinkButton ID="btnViewApp" runat="server" ForeColor="#A66D03" Text="View Details" CommandName="ViewApplication"
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
                                        <EmptyDataTemplate>You have no purchase requisition awaiting your approval.</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="ViewDetails" runat="server">
                        <div class="form-horizontal">
                            <strong style="color: #8C1C03;">Purchase Requisition Header :</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridPRHeader" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                            <Columns>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Request_date" DataFormatString="{0:d}" HeaderText="Request date" />
                                                <asp:BoundField DataField="Required_Date" DataFormatString="{0:d}" HeaderText="Required Date" />
                                                <asp:BoundField DataField="Request_Description" HeaderText="Request Description" />
                                                <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View Lines">
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
                            <strong style="color: #8C1C03;">Purchase Requisition Lines:</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridPRLines" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Requistion_No" HeaderText="Requistion No"
                                                    SortExpression="Requistion_No" />
                                                <asp:BoundField DataField="Line_No" HeaderText="Line No" SortExpression="Line_No" />
                                                <asp:BoundField DataField="No" HeaderText="Item No"
                                                    SortExpression="No" />
                                                <asp:BoundField DataField="Description" HeaderText="Description"
                                                    SortExpression="Description" />
                                                <asp:BoundField DataField="Remarks" HeaderText="Remarks"
                                                    SortExpression="Remarks" />
                                                <asp:BoundField DataField="Quantity" HeaderText="Quantity"
                                                    SortExpression="Quantity" />
                                                <asp:BoundField DataField="Unit_Cost" HeaderText="Unit Cost"
                                                    SortExpression="Unit_Cost" />
                                                <asp:BoundField DataField="Line_Amount" HeaderText="Line Amount"
                                                    SortExpression="Line_Amount" />
                                                <asp:BoundField DataField="Procurement_Plan_Item_No" HeaderText="Procurement Plan Item No"
                                                    SortExpression="Procurement_Plan_Item_No" />
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>No Purchase Requisition Lines added!</EmptyDataTemplate>
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
                                                Approver Comments:</label>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtApproverComment" runat="server" CssClass="form-control input-sm" Height="100px" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="col-md-7">
                                                <asp:Button runat="server" ID="btnApproveRequest" OnClick="btnApproveRequest_Click" CssClass="btn btn-success btn-sm"
                                                    Text="Approve Request" OnClientClick="return confirm('Are you certain you want to Approve this request?');" />
                                                <asp:Button runat="server" ID="btnRejectRequest" OnClick="btnRejectRequest_Click" CssClass="btn btn-warning btn-sm"
                                                    Text="Reject Request" CausesValidation="false" OnClientClick="return confirm('Are you certain you want to Reject this request?');" />
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
        /*$('[id *=ddlItem]').on('change', function () {
            var item = $(this).val();
            if (item.indexOf(":") != -1) {
                var unitOfMeasure = item.substring(item.indexOf(":") + 1);
                $('[id *=ddlUnits]').val(unitOfMeasure);
            } else {
                $('[id *=ddlUnits]').val("PCS");
            }
        });*/
        function getUnitsOfMeasure(selectObject) {
            var item = selectObject.value;
            if (item.indexOf(":") != -1) {
                var unitOfMeasure = item.substring(item.indexOf(":") + 1);
                $('[id *=ddlUnits]').val(unitOfMeasure);
            } else {
                $('[id *=ddlUnits]').val("PCS");
            }
        }
        $('[id *=txtUnitCost]').on('keyup', function () {
            var qnty = $("[id *=txtQuantity]").val();
            if (qnty != "") {
                calcLineAmount();
            }
        });
        $('[id *=txtQuantity]').on('change', function () {
            //$("[id *=txtUnitCost]").removeAttr("readonly");
            var unitcost = $("[id *=txtUnitCost]").val();
            if (unitcost != "") {
                calcLineAmount();
            }
        });
        function calcLineAmount() {
            var qnty = $("[id *=txtQuantity]").val();
            var unitcost = $("[id *=txtUnitCost]").val();
            $('[id *=txtLineAmount]').val(qnty * unitcost);
        }
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
        $(function () {
            $('[id *=ddlItem]').select2();
        });
    </script>
</asp:Content>
