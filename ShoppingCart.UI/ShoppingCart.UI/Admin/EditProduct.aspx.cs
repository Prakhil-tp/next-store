using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI.Admin
{
    public partial class EditProduct : System.Web.UI.Page
    {
        ColourController _colour = new ColourController();
        ProductController product = new ProductController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int colorid = Convert.ToInt32(Session["ProductViewId"]);
                var colorDetails = _colour.Search(colorid);
                var data = product.Search(colorDetails.ProductId);
                TxtName.Text = data.Name;
                TxtSize.Text = data.Size.ToString();
                TxtStock.Text = data.Stock.ToString();
                TxtPrice.Text = data.Price.ToString();
                TxtDesc.Text = data.Description;
            }
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            int colorid = Convert.ToInt32(Session["ProductViewId"]);
            var colorDetails = _colour.Search(colorid);
            var data = product.Search(colorDetails.ProductId);

            product.Update(new Product
                          {
                              Name = TxtName.Text,
                              Colour = data.Colour,
                              Size = Convert.ToInt32(TxtSize.Text),
                              Price = float.Parse(TxtPrice.Text),
                              Description = TxtDesc.Text,
                              BrandId = data.BrandId,
                              Stock = Convert.ToInt32(TxtStock.Text),
                              CategoryId = data.CategoryId,
                              MyColorId = data.MyColorId,
                              ProductId = data.ProductId
                          });

            Response.Redirect("~/Admin/Productdetails.aspx");
            
              
        }
    }
}