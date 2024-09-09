<%@ Page Language="C#" AutoEventWireup="true" Title="Incidence Reporting" CodeBehind="Asset Incidences.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLC_HRMS_PORTAL.Asset_Incidences" %>

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
                    <h3 style="color: #a35050;">Asset Incidence Registration</h3>
                </div>
                <div class="row">
                    <div class="col-md-3" style="width: 25%">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <a class="fa fa-plus-circle fa-3x" style="color: #FFF" onclick="return confirm('Are you sure you want to report a new inicence?');" href="/Asset Incidences?v=0"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <label style="visibility: hidden;">0</label>
                                        </div>
                                        <div>New Incidence</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Incidences?v=0" onclick="return confirm('Are you sure you want to report a new inicence?');" runat="server" id="newApplications">
                                <div class="panel-footer">
                                    <span class="pull-left">report new incidence</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
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
                                        <a class="fa fa-tasks fa-3x" style="color: #31708F" href="/Asset Incidences?v=1"></a>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">
                                            <asp:Label runat="server" ID="RequestCount">0</asp:Label>
                                        </div>
                                        <div>Incidences</div>
                                    </div>
                                </div>
                            </div>
                            <a href="/Asset Incidences?v=1" runat="server" id="A1">
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
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Requistion No:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequisitionNo" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Document Date:</label>
                                        <div class="col-md-8">
                                            <div id="datetimepicker3" class="input-append">
                                                <asp:TextBox runat="server" ID="txtDocumentDate" Enabled="false" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            User ID:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtRequesterID" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Responsibility Centre:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtResCentre" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Document Type:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtDocumentType" Text="Asset Incidence" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-4">
                                            Status:</label>
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtStatus" Text="Open" Enabled="false" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <strong style="color: #8C1C03;">Asset Incidence List</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Asset Description:</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="ddlAssets" runat="server" CssClass="form-control input-sm"
                                                AppendDataBoundItems="true">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="" ControlToValidate="ddlAssets"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                TargetControlID="RequiredFieldValidator1">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-12" style="text-align: left;">
                                            Incidence Description:</label>
                                        <div class="col-md-12">
                                            <asp:TextBox runat="server" ID="txtIncidenceDesc" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIncidenceDesc"
                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                ValidationGroup="lines">
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
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <asp:Button runat="server" ID="btnAddAsset" ValidationGroup="lines" OnClick="btnAddAsset_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="Add Asset" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdAssetList" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="grdAssetList_RowDataBound"
                                            OnRowCommand="grdAssetList_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="Asset No"
                                                    SortExpression="No" />
                                                <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                    SortExpression="Asset_No" />
                                                <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                    SortExpression="Asset_Description" />
                                                <asp:BoundField DataField="Asset_Serial_No" HeaderText="Serial No"
                                                    SortExpression="Asset_Serial_No" />
                                                <asp:BoundField DataField="Remarks" HeaderText="Incidence Details"
                                                    SortExpression="Remarks" />
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
                                            <EmptyDataTemplate>No Assets Added!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12 col-md-offset-10">
                                            <asp:Button runat="server" ID="btnsubmitRequest" OnClick="btnsubmitRequest_Click" ValidationGroup="header" CssClass="btn btn-info btn-sm"
                                                Text="Submit" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">My Asset Incidencies</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMyAssetIncidencesheader" runat="server" AutoGenerateColumns="False" DataKeyNames="No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowCommand="gridMyAssetIncidencesheader_RowCommand"
                                            OnRowDataBound="gridMyAssetIncidencesheader_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="No" />
                                                <asp:BoundField DataField="Document_Date" DataFormatString="{0:d}" HeaderText="Date Reported" />
                                                <asp:BoundField DataField="User_ID" HeaderText="Reported By" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:ButtonField CommandName="BTNVIEWLINES" ControlStyle-ForeColor="#A66D03" Text="View More Details">
                                                    <ItemStyle Width="100px" />
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
                                            <EmptyDataTemplate>You have no Asset incidencies reported.</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="form-horizontal">
                            <hr />
                            <strong style="color: #8C1C03;">Asset Incidencies List</strong>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gridMyAssetIncidences" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridMyAssetIncidences_RowDataBound"
                                            OnRowCommand="gridMyAssetIncidences_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#" ItemStyle-Width="100">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="No" HeaderText="Asset No"
                                                    SortExpression="No" />
                                                <asp:BoundField DataField="Asset_No" HeaderText="Asset No"
                                                    SortExpression="Asset_No" />
                                                <asp:BoundField DataField="Asset_Description" HeaderText="Asset Description"
                                                    SortExpression="Asset_Description" />
                                                <asp:BoundField DataField="Asset_Serial_No" HeaderText="Serial No"
                                                    SortExpression="Asset_Serial_No" />
                                                <asp:BoundField DataField="Remarks" HeaderText="Incidence Details"
                                                    SortExpression="Remarks" />
                                                <asp:ButtonField CommandName="btncancel" Text="Cancel" Visible="false" ButtonType="Image" ImageUrl="~/Img/cancel.png">
                                                    <ItemStyle Width="60px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle CssClass="bs-pagination" />
                                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                                            <EmptyDataTemplate>You have no Asset incidencies reported!</EmptyDataTemplate>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="col-md-12 col-md-offset-10">
                                            <asp:Button runat="server" ID="btnBack" OnClick="btnBack_Click" BackColor="#A66D03" ForeColor="#FFFFFF" CssClass="btn btn-default btn-xs"
                                                Text="<<<Back" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
</asp:Content>
