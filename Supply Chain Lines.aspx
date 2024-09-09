<%@ Page Language="C#" AutoEventWireup="true" Title="Lines" MasterPageFile="~/Popup.Master" CodeBehind="Supply Chain Lines.aspx.cs" Inherits="NLC_HRMS_PORTAL.Supply_Chain_Lines" %>

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
                <div class="panel-body">
                    <div class="form-horizontal">
                        <strong style="color: #8C1C03;" id="header1" runat="server"></strong>
                        <hr />
                        <div class="row" id="srlinesDiv" runat="server">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvstoreReqlines" runat="server" AutoGenerateColumns="False" DataKeyNames="Line_No"
                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gvstoreReqlines_RowDataBound"
                                        OnRowCommand="gvstoreReqlines_RowCommand">
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
                                            <asp:BoundField DataField="Issuing_Store" HeaderText="Issuing Store" SortExpression="Issuing_Store" />
                                            <asp:BoundField DataField="Quantity_Requested" HeaderText="Quantity Requested"
                                                SortExpression="Quantity_Requested" />
                                            <asp:BoundField DataField="Qty_in_store" HeaderText="Quantity in store"
                                                SortExpression="Qty_in_store" />
                                            <asp:TemplateField HeaderText="Quantity Issued">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblApproved_Qty" Text='<%# Eval("Quantity") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Quantity Received">
                                                <ItemTemplate>
                                                    <div id="AcceptForm">
                                                        <asp:TextBox runat="server" ID="txtQuantity_to_Receive" Text='<%# Eval("Quantity_to_Receive") %>' onchange="getQntyToReject(this.value)" CssClass="form-control input-sm"></asp:TextBox>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Quantity Returned">
                                                <ItemTemplate>
                                                    <div id="RejectForm">
                                                        <asp:TextBox runat="server" ID="txtQuantity_to_Reject" Text='<%# Eval("Quantity_to_Reject") %>' onchange="getQntyToReceive(this.value)" CssClass="form-control input-sm"></asp:TextBox>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Request_Status" HeaderText="Request Status"
                                                SortExpression="Request_Status" />
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
                                        <EmptyDataTemplate>No Items found!</EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <div id="prlinesDiv" runat="server" visible="false">
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
                        </div>
                        <div class="row" style="padding-left: 15px;">
                            <asp:Button runat="server" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-info btn-sm"
                                Text="Submit" />
                            <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                                Text="Close" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#AcceptForm > input').on('input change', function () {
            //alert("Id=" + $(this).attr('id') + " Val=" + $(this).val());
            var qntyToaccept = $(this).val();
            var num = $(this).attr('id').replace("MainContent_gvstoreReqlines_txtQuantity_to_Receive_", "");
            // alert("Num=" + num);
            var IdName = "MainContent_gvstoreReqlines_lblApproved_Qty_";
            var IDName2 = IdName.concat(num);
            var approvedQnty = $("#" + IDName2).html();
            // alert("approvedQnty=" + approvedQnty);
            if (qntyToaccept > approvedQnty) {
                alert("Sorry! you cannot Receive more than you requested");
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Receive_" + num).val(approvedQnty);
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Reject_" + num).val(0);
            } else if (qntyToaccept < 0) {
                alert("Sorry! Quantity to accept should not be less tha Zero");
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Receive_" + num).val(0);
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Reject_" + num).val(0);
            }
            else {
                var qntyToReject = approvedQnty - qntyToaccept;
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Reject_" + num).val(qntyToReject);
            }
        });
        $('#RejectForm > input').on('input change', function () {
            //alert("Id=" + $(this).attr('id') + " Val=" + $(this).val());
            var qntyToReject = $(this).val();
            var num = $(this).attr('id').replace("MainContent_gvstoreReqlines_txtQuantity_to_Reject_", "");
            // alert("Num=" + num);
            var IdName = "MainContent_gvstoreReqlines_lblApproved_Qty_";
            var IDName2 = IdName.concat(num);
            var approvedQnty = $("#" + IDName2).html();
            // alert("approvedQnty=" + approvedQnty);
            if (qntyToReject > approvedQnty) {
                alert("Sorry! you cannot Return more than you requested");
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Reject_" + num).val(approvedQnty);
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Receive_" + num).val(0);
            } else if (qntyToReject < 0) {
                alert("Sorry! Quantity to Return should not be less tha Zero");
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Receive_" + num).val(0);
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Reject_" + num).val(0);
            }
            else {
                var qntyToAccept = approvedQnty - qntyToReject;
                $("#MainContent_gvstoreReqlines_txtQuantity_to_Receive_" + num).val(qntyToAccept);
            }
        });
    </script>
</asp:Content>
