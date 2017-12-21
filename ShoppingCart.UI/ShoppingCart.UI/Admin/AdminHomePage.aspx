<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="ShoppingCart.UI.Admin.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div style="height:200px;width:600px;">
        <asp:Image ID="Image2" runat="server" Height="447px" 
            ImageUrl="~/Images/SliderImg/8.png" Width="996px" />
    </div>
   






     <div style="height:400px;width:1000px; margin-top:250px;" >
	
		<h3>OUR BRANDS</h3>
        <p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
        <br/>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="BrandId" 
            DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" 
             RepeatColumns="10">
            <ItemTemplate>
                <div class="brand left">
                    <asp:Image ID="Image1" runat="server" CssClass="brand left" 
                        ImageUrl='<%# Eval("BrandId", "~/Images/BrandLogos/{0}.jpg") %>' />
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
       	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingcartConnectionString %>" 
            SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
       
   	
</div>



</asp:Content>
