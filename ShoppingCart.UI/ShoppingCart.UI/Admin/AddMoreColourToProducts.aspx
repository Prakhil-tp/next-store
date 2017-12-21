<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AddMoreColourToProducts.aspx.cs" Inherits="ShoppingCart.UI.Admin.AddMoreColourToProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                            SelectMethod="GetAllImagesFromColorImg" 
                            TypeName="ShoppingCart.Controller.ColourController" 
                    OldValuesParameterFormatString="original_{0}">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="HiddenField1" Name="colorid" 
                                    PropertyName="Value" Type="Int32" />
                                <asp:ControlParameter ControlID="HiddenField2" Name="path" PropertyName="Value" 
                                    Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    <br />
                <asp:HiddenField ID="HiddenField2" runat="server" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
            <br />
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Add More Colours" Font-Bold="True" 
                    Font-Size="Larger"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="LbProductName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Color :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlColourSelect" runat="server" Height="17px" 
                    Width="216px" CssClass="dll">
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Orange</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;
                <asp:Button ID="cmdSave" runat="server" onclick="cmdSave_Click" Text="Save" 
                    Width="60px" CssClass="cmdbutton" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Image  :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="txt" Height="18px" 
                    Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdAdd" runat="server" onclick="cmdAdd_Click" Text="Add" 
                    Width="58px" CssClass="cmdbutton" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    j 
                <asp:DataList ID="DataList1" runat="server" CellSpacing="20" 
                    DataSourceID="ObjectDataSource3" RepeatColumns="4">
                    <ItemTemplate>
<br />
                        <asp:Image ID="Image1" runat="server" Height="70px" 
                            ImageUrl='<%# Eval("Image", "~/Images/ColorImage/{0}") %>' Width="84px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </asp:Content>
