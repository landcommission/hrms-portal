<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndividualObjectives.aspx.cs" MasterPageFile="~/Popup.Master" Title="Objectives" Inherits="NLC_HRMS_PORTAL.IndividualObjectives" %>

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
                    <h3 style="color: #a35050;" id="h3Title" runat="server">ENTER DEPARTMENTAL OBJECTIVES FOR THE REVIEW PERIOD</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">
                                Objective Statement:</label>
                            <div class="col-md-8">
                                <asp:TextBox runat="server" ID="txtObjectives" CssClass="form-control input-sm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtObjectives"
                                    SetFocusOnError="True" ErrorMessage="Objective Required!" ForeColor="Red" Display="None"
                                    ValidationGroup="objective">
                                </asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                    TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnAddIndividualObj" OnClick="btnAddIndividualObj_Click" CssClass="btn btn-info btn-sm"
                                Text="Add Departmental Objectives" ValidationGroup="objective" />
                            <asp:Button runat="server" ID="btnBack" OnClientClick="window.close();" CssClass="btn btn-warning btn-sm"
                                Text="Close" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                CssClass="table table-striped dt-responsive table-bordered nowrap" DataSourceID="dsIndividualObj" HeaderStyle-BackColor="#8B6914"
                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="ID" OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
                                EmptyDataText="Enter Your Departmental Objectives" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                                BackColor="#006666" OnClientClick="return confirm('Are You Sure You Want To Delete?')"
                                                Text="Delete" BorderStyle="Outset" ForeColor="White" BorderColor="#CC6699"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Width="20px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                                        SortExpression="ID" Visible="false" />
                                    <asp:BoundField DataField="Staff_No" HeaderText="Staff_No" ReadOnly="True" SortExpression="Staff_No"
                                        Visible="false" />
                                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department"
                                        Visible="false" />
                                    <asp:BoundField DataField="Objectives" HeaderText="Individual Departmental Objectives" SortExpression="Objectives"
                                        ItemStyle-Width="200px">
                                        <ItemStyle Width="200px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" Visible="false" />
                                </Columns>
                                <HeaderStyle ForeColor="White" />
                                <PagerStyle />
                                <AlternatingRowStyle />
                            </asp:GridView>
                            <asp:SqlDataSource ID="dsIndividualObj" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"
                                DeleteCommand="DELETE FROM [NLC$HR Individual Objectives1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [NLC$HR Individual Objectives1] ([timestamp], [Staff No], [Department], [Objectives], [Period], [Appraisal No]) VALUES (@timestamp, @Staff_No, @Department, @Objectives, @Period, @Appraisal_No)"
                                SelectCommand="SELECT * FROM [NLC$HR Individual Objectives1]" UpdateCommand="UPDATE [NLC$HR Individual Objectives1] SET [timestamp] = @timestamp, [Staff No] = @Staff_No, [Department] = @Department, [Objectives] = @Objectives, [Period] = @Period, [Appraisal No] = @Appraisal_No WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="timestamp" Type="Object" />
                                    <asp:Parameter Name="Staff_No" Type="String" />
                                    <asp:Parameter Name="Department" Type="String" />
                                    <asp:Parameter Name="Objectives" Type="String" />
                                    <asp:Parameter Name="Period" Type="String" />
                                    <asp:Parameter Name="Appraisal_No" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="timestamp" Type="Object" />
                                    <asp:Parameter Name="Staff_No" Type="String" />
                                    <asp:Parameter Name="Department" Type="String" />
                                    <asp:Parameter Name="Objectives" Type="String" />
                                    <asp:Parameter Name="Period" Type="String" />
                                    <asp:Parameter Name="Appraisal_No" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="true"
                                CssClass="table table-striped dt-responsive table-bordered nowrap" DataSourceID="dsIndividualObj" HeaderStyle-BackColor="#8B6914"
                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" DataKeyNames="ID"
                                EmptyDataText="No Individual Objectives">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" InsertVisible="False"
                                        ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="Staff_No" HeaderText="Staff_No" Visible="false" SortExpression="Staff_No" />
                                    <asp:BoundField DataField="Department" HeaderText="Department" Visible="false" SortExpression="Department" />
                                    <asp:BoundField DataField="Objectives" HeaderText="Appraisee Departmental Objectives" SortExpression="Objectives" />
                                    <asp:BoundField DataField="Period" HeaderText="Period" Visible="false" SortExpression="Period" />
                                </Columns>
                                <HeaderStyle ForeColor="White" />
                                <PagerStyle />
                                <AlternatingRowStyle />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
