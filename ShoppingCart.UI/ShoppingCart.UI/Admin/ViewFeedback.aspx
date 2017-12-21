<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="ShoppingCart.UI.Admin.ViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSourcefeedback" Width="381px">
        <ItemTemplate>
            <br />
            Feedback:
            <asp:Label ID="FeedbackLabel" runat="server" 
                Text='<%# Eval("Feedback") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" 
                Text='<%# Eval("Date") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourcefeedback" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
        SelectCommand="SELECT Feedback.Date, Feedback.Feedback, RegisteredUser.Name FROM RegisteredUser INNER JOIN Feedback ON RegisteredUser.UserId = Feedback.UserId">
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetallData" TypeName="ShoppingCart.Controller.FeedbackController">
    </asp:ObjectDataSource>
</asp:Content>
