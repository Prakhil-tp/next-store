<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ShoppingCart.UI.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 100%;
            height: 600px;
        }
   
    .style4
    {
        width: 129px;
        height: 17px;
    }
    .style6
    {
        height: 17px;
    }
        .style13
        {
            width: 129px;
            height: 28px;
        }
        .style14
        {
            width: 267px;
            height: 28px;
        }
        .style15
        {
            height: 28px;
        }
        .style16
        {
            width: 129px;
            height: 22px;
        }
        .style20
        {
            width: 100px;
        }
        .style23
        {
            width: 96px;
        }
        .style25
        {
            width: 255px;
        }
        .style26
        {
            width: 63px;
        }
        .style33
        {
        }
        .style34
        {
            width: 8px;
        }
        .style35
        {
            width: 78px;
        }
        .style36
        {
            width: 100%;
        }
        .style40
        {
            height: 31px;
        }
        .style42
        {
            width: 129px;
            height: 45px;
        }
        .style43
        {
            width: 267px;
            height: 45px;
        }
        .style44
        {
            height: 45px;
        }
        .style45
        {
            width: 129px;
            height: 33px;
        }
        .style46
        {
            width: 267px;
            height: 33px;
        }
        .style47
        {
            height: 33px;
        }
        .style52
        {
            height: 28px;
            width: 83px;
        }
        .style55
        {
            height: 33px;
            width: 83px;
        }
        .style56
        {
            height: 45px;
            width: 83px;
        }
        .style61
        {
            width: 93px;
        }
        .style62
        {
            height: 28px;
            width: 93px;
        }
        .style63
        {
            height: 31px;
            width: 93px;
        }
        .style65
        {
            height: 33px;
            width: 93px;
        }
        .style66
        {
            height: 45px;
            width: 93px;
        }
        .style68
        {
            height: 17px;
            width: 93px;
        }
        .style83
        {
            width: 267px;
            height: 22px;
        }
        .style84
        {
            height: 22px;
            width: 83px;
        }
        .style85
        {
            height: 22px;
            width: 93px;
        }
        .style86
        {
            height: 22px;
        }
        .style87
        {
            width: 129px;
            height: 31px;
        }
        .style92
        {
            height: 37px;
        }
        .style93
        {
            width: 267px;
            height: 37px;
        }
        .style94
        {
            height: 37px;
            width: 83px;
        }
        .style95
        {
            height: 37px;
            width: 93px;
        }
        .style97
        {
            width: 267px;
            height: 2px;
        }
        .style98
        {
            height: 2px;
            width: 83px;
        }
        .style99
        {
            height: 2px;
            width: 93px;
        }
        .style100
        {
            width: 129px;
            height: 25px;
        }
        .style101
        {
            width: 267px;
            height: 25px;
        }
        .style102
        {
            height: 25px;
            width: 83px;
        }
        .style103
        {
            height: 25px;
            width: 93px;
        }
        .style104
        {
            height: 25px;
        }
        .style112
        {
            width: 267px;
            height: 31px;
        }
        .style113
        {
            width: 267px;
            height: 17px;
        }
        .style114
        {
            width: 267px;
        }
        .style115
        {
            width: 83px;
        }
        .style116
        {
            height: 31px;
            width: 83px;
        }
        .style117
        {
            height: 17px;
            width: 83px;
        }
        .style126
        {
            width: 295px;
        }
        .style127
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style114">
                        &nbsp;</td>
                    <td class="style115">
                        &nbsp;</td>
                    <td class="style61">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="5">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                            Text="ADD PRODUCT"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style114">
                        &nbsp;</td>
                    <td class="style115">
                        &nbsp;</td>
                    <td class="style61">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style114">
                        &nbsp;</td>
                    <td class="style115">
                        &nbsp;</td>
                    <td class="style61">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style114">
                        <asp:Label ID="Label2" runat="server" Text="ProductName"></asp:Label>
                    </td>
                    <td class="style115">
                        &nbsp;</td>
                    <td class="style61">
                        <asp:Label ID="Label10" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtprodname" runat="server" CssClass="txt" Height="22px" 
                            Width="223px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtprodname" ErrorMessage="*" ForeColor="Red" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style52">
                    </td>
                    <td class="style62">
                        <asp:DropDownList ID="ddlCategory" runat="server" CssClass="dll" 
                            DataSourceID="ObjectDataSource4" DataTextField="CategoryName" 
                            DataValueField="CategoryId" Height="22px" Width="223px">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                            SelectMethod="GetallData" TypeName="ShoppingCart.Controller.CategoryController">
                        </asp:ObjectDataSource>
                    </td>
                    <td class="style15">
                    </td>
                </tr>
                <tr>
                    <td class="style127">
                        </td>
                    <td class="style97">
                        Description<br /> </td>
                    <td class="style98">
                    </td>
                    <td class="style99">
                        <asp:Label ID="Label11" runat="server" Text="Brand"></asp:Label>
                    </td>
                    <td class="style127">
                    </td>
                </tr>
                <tr>
                    <td class="style92">
                    </td>
                    <td class="style93">
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="txt" 
                            TextMode="MultiLine" Width="223px"></asp:TextBox>
                    </td>
                    <td class="style94">
                    </td>
                    <td class="style95">
                        <asp:DropDownList ID="ddlBrand" runat="server" CssClass="dll" 
                            DataSourceID="ObjectDataSource2" DataTextField="BrandName" 
                            DataValueField="BrandId" Height="22px" Width="223px">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                            SelectMethod="GetallData" TypeName="ShoppingCart.Controller.BrandController">
                        </asp:ObjectDataSource>
                    </td>
                    <td class="style92">
                    </td>
                </tr>
                <tr>
                    <td class="style40">
                        </td>
                    <td class="style112">
                        <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="style116">
                        &nbsp;</td>
                    <td class="style63">
                        <asp:Label ID="Label12" runat="server" Text="Size"></asp:Label>
                    </td>
                    <td class="style40">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style40">
                        &nbsp;</td>
                    <td class="style112">
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="txt" Height="22px" 
                            Width="223px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtPrice" ErrorMessage="*" ForeColor="Red" 
                            ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style116">
                        &nbsp;</td>
                    <td class="style63">
                        <asp:DropDownList ID="ddlSize" runat="server" CssClass="dll" Height="22px" 
                            Width="223px">
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style40">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style16">
                    </td>
                    <td class="style83">
                        <asp:Label ID="Label13" runat="server" Text="Stock"></asp:Label>
                    </td>
                    <td class="style84">
                    </td>
                    <td class="style85">
                        Colour</td>
                    <td class="style86">
                    </td>
                </tr>
                <tr>
                    <td class="style87">
                    </td>
                    <td class="style112">
                        <asp:TextBox ID="txtStock" runat="server" CssClass="txt" Height="22px" 
                            Width="223px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtStock" ErrorMessage="*" ForeColor="Red" 
                            ValidationExpression="^[0-9]$" ValidationGroup="a"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style116">
                    </td>
                    <td class="style63">
                        <asp:DropDownList ID="ddlColour" runat="server" CssClass="dll" Width="223px">
                            <asp:ListItem>Black</asp:ListItem>
                            <asp:ListItem>Blue</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem>White</asp:ListItem>
                            <asp:ListItem>Yellow</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style40">
                    </td>
                </tr>
                <tr>
                    <td class="style45">
                    </td>
                    <td class="style46">
                        &nbsp;</td>
                    <td class="style55">
                        &nbsp;</td>
                    <td class="style65">
                        <asp:Label ID="Label14" runat="server" Text="Image"></asp:Label>
                    </td>
                    <td class="style47">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style42">
                        </td>
                    <td class="style43">
                        </td>
                    <td class="style56">
                    </td>
                    <td class="style66">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" Width="223px" />
                        <asp:HiddenField ID="HiddenField3" runat="server" />
                    </td>
                    <td class="style44">
                    </td>
                </tr>
                <tr>
                    <td class="style100">
                    </td>
                    <td class="style101">
                    </td>
                    <td class="style102">
                    </td>
                    <td align="center" class="style103">
                        <asp:Button ID="Cmd_AddProduct1" runat="server" CssClass="cmdbutton" 
                            onclick="Cmd_AddProduct_Click" Text="AddProduct" Width="100px" 
                            ValidationGroup="a" />
                    </td>
                    <td class="style104">
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style113">
                        &nbsp;</td>
                    <td class="style117">
                        &nbsp;</td>
                    <td class="style68">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style113">
                        &nbsp;</td>
                    <td class="style117">
                        &nbsp;</td>
                    <td class="style68">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style113">
                        &nbsp;</td>
                    <td class="style117">
                        &nbsp;</td>
                    <td class="style68">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">

            <table class="style1">
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style33" colspan="4">
                        <asp:Label ID="LbProductName" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style33" colspan="4">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        Colour</td>
                    <td class="style33" colspan="4">
                        <asp:DropDownList ID="ddlColour0" runat="server" CssClass="dll" Height="16px" 
                            Width="215px">
                            <asp:ListItem>Black</asp:ListItem>
                            <asp:ListItem>Blue</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                            <asp:ListItem>Orange</asp:ListItem>
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem>White</asp:ListItem>
                            <asp:ListItem>Yellow</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style33" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style33" colspan="5" align="center">
                        <asp:Label ID="lbl5" runat="server" Text="5"></asp:Label>
                        &nbsp;<asp:TextBox ID="txt5" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl6" runat="server" Text="6"></asp:Label>
                    &nbsp;<asp:TextBox ID="txt6" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl7" runat="server" Text="7"></asp:Label>
&nbsp;<asp:TextBox ID="txt7" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl8" runat="server" Text="8"></asp:Label>
                        <asp:TextBox ID="txt8" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl9" runat="server" Text="9"></asp:Label>
                        <asp:TextBox ID="txt9" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl10" runat="server" Text="10"></asp:Label>
                        <asp:TextBox ID="txt10" runat="server" Height="23px" Width="36px"></asp:TextBox>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style33" colspan="4">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style34">
                        <asp:Button ID="cmdsave0" runat="server" onclick="cmdsave_Click" Text="Save" 
                            Width="50px" CssClass="cmdbutton" />
                    </td>
                    <td colspan="3">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        Image</td>
                    <td class="style35" colspan="3">
                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="txt" />
                    </td>
                    <td class="style25" colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="cmdadd" runat="server" onclick="cmdadd_Click" Text="Add" 
                            Width="49px" CssClass="cmdbutton" />
                    </td>
                    <td class="style33" colspan="2">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style25" colspan="5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style25" colspan="5">
                        <asp:DataList ID="DataList1" runat="server" CellSpacing="20" 
                            DataSourceID="ObjectDataSource3" RepeatColumns="4">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="70px" 
                                    ImageUrl='<%# Eval("Image", "~/Images/ColorImage/{0}") %>' Width="92px" />
                                <br />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                            SelectMethod="GetAllImagesFromColorImg" 
                            TypeName="ShoppingCart.Controller.ColourController">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="HiddenField1" Name="colorid" 
                                    PropertyName="Value" Type="Int32" />
                                <asp:ControlParameter ControlID="HiddenField2" Name="path" PropertyName="Value" 
                                    Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <table class="style36">
                <tr>
                    <td class="style126">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                    <td>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style126">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>


        </asp:View>
    </asp:MultiView>
</asp:Content>
