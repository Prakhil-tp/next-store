using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.PublicUser
{
    public partial class ProductSearch : System.Web.UI.Page
    {
        CartController cart = new CartController();
        ProductController product = new ProductController();
        WishlistController wishlist = new WishlistController();
        ColourController _color = new ColourController();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                HiddenColour.Value = "Red";
                HiddenColourPrice.Value = "Red";
                HiddenPrice11.Value = "500";
                HiddenPrice22.Value = "1500";
                HiddenPrice1.Value = "500";
                HiddenPrice2.Value = "1500";
                MultiView1.ActiveViewIndex = 3;
            }
            else
            {
                HiddenColour.Value = "Red";
                HiddenColourPrice.Value = "Red";
                HiddenPrice11.Value = "500";
                HiddenPrice22.Value = "1500";
                HiddenPrice1.Value = "500";
                HiddenPrice2.Value = "1500";
                MultiView1.ActiveViewIndex = 3;
            }
        }

        protected void cmd500to1500_Click(object sender, EventArgs e)
        {
            HiddenPrice1.Value = "500";
            HiddenPrice2.Value = "1500";
            MultiView1.ActiveViewIndex = 0;
        }

        protected void cmd1500to2500_Click(object sender, EventArgs e)
        {
            HiddenPrice1.Value = "1500";
            HiddenPrice2.Value = "2500";
            MultiView1.ActiveViewIndex = 0;
        }

        protected void cmd2500to3500_Click(object sender, EventArgs e)
        {
            HiddenPrice1.Value = "2500";
            HiddenPrice2.Value = "3500";
            MultiView1.ActiveViewIndex = 0;
        }

        protected void cmd3500to4500_Click(object sender, EventArgs e)
        {
            HiddenPrice1.Value = "3500";
            HiddenPrice2.Value = "4500";
            MultiView1.ActiveViewIndex = 0;
        }

        protected void cmd4500to5500_Click(object sender, EventArgs e)
        {
            HiddenPrice1.Value = "4500";
            HiddenPrice2.Value = "5500";
            MultiView1.ActiveViewIndex = 0;
        }

        protected void cmdred_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Red";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        
        protected void cmdblue_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Blue";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdyellow_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Yellow";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdorange_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Orange";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdblack_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Black";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdwhite_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "White";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdgreen_Click(object sender, EventArgs e)
        {
            HiddenColour.Value = "Green";
            datalistColorSearch.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cmdFind_Click(object sender, EventArgs e)
        {
            HiddenColourPrice.Value = ddlColour.SelectedItem.Value;
            if (ddlPriceRange.SelectedItem.Value == "500-1500")
            {
                HiddenPrice11.Value = "500";
                HiddenPrice22.Value = "1500";
                dlColorPriceSearch.DataBind();

            }
            else if (ddlPriceRange.SelectedItem.Value == "1500-2500")
            {
                HiddenPrice11.Value = "1500";
                HiddenPrice22.Value = "2500";
                dlColorPriceSearch.DataBind();
            }
            else if (ddlPriceRange.SelectedItem.Value == "2500-3500")
            {
                HiddenPrice11.Value = "2500";
                HiddenPrice22.Value = "3500";
                dlColorPriceSearch.DataBind();
            }
            else if (ddlPriceRange.SelectedItem.Value == "3500-4500")
            {
                HiddenPrice11.Value = "3500";
                HiddenPrice22.Value = "4500";
                dlColorPriceSearch.DataBind();
            }
            else if (ddlPriceRange.SelectedItem.Value == "4500-5500")
            {
                HiddenPrice11.Value = "4500";
                HiddenPrice22.Value = "5500";
                dlColorPriceSearch.DataBind();
            }
            MultiView1.ActiveViewIndex = 2;
            dlColorPriceSearch.DataBind();
        }

        protected void dlPriceSearchedProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = id;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx");

            }
        }

        protected void datalistColorSearch_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = id;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx");

            }
        }

        protected void dlColorPriceSearch_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = id;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx");
         

            }
        }

        protected void datalistProductView_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = id;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx");


            }
        }

      
     

       



        
    }
}