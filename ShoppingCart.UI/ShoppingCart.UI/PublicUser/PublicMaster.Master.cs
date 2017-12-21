using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI.PublicUser
{
    public partial class PublicMaster : System.Web.UI.MasterPage
    {

        AccountController account = new AccountController();
        RegisteredUserController user = new RegisteredUserController();
        ColourController _color = new ColourController();
        CategoryController _category = new CategoryController();
        BrandController _brand = new BrandController();
        ProductController _product = new ProductController();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                foreach (var item in _brand.GetallData())
                {
                    Button b1 = new Button
                    {
                        Height = 30,
                        Width = 100,
                        Text = item.BrandName,
                        CssClass = "submenuButton",
                        CommandArgument=item.BrandId.ToString()
                    };
                    b1.Command += Load_BrandProduct;
                    PlaceHolder1.Controls.Add(b1);
                }
                foreach (var item in _category.GetallData())
                {
                    Button b = new Button
                    {
                        Height = 30,
                        Width = 100,
                        Text = item.CategoryName,
                        CssClass = "submenuButton",
                        CommandArgument=item.CategoryId.ToString(),
                        
                    };
                    b.Command += Load_Items;
                    PlaceHolder2.Controls.Add(b);
                }

            }
        }


        protected void Load_Items(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/PublicUser/ViewProductCategory.aspx?category="+e.CommandArgument);
        }



        public void Load_BrandProduct(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/PublicUser/ViewProductBrand.aspx?brand=" + e.CommandArgument);
        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {


            var data = (from c in account.GetallData() where c.Username == txtUsername.Text && c.Password == txtPassword.Text select c).SingleOrDefault();

            if (data != null)
            {
                Account a = account.getAccount(txtUsername.Text, txtPassword.Text);
                if (a.Role == "Admin")
                {
                    Response.Redirect("~/Admin/AdminHomePage.aspx");

                }
                else if (a.Role == "User")
                {

                    var id = user.IdSearch(txtUsername.Text, txtPassword.Text);
                    
                    Session["UserId"] = id;
                    Response.Redirect("~/Customer/UserHomePage.aspx");
                }
                else
                {
                    lblerror.Visible = true;
                }
            }
            else
            {
                lblerror.Visible = true;
            }

        }

        protected void txtSearchItem_TextChanged(object sender, EventArgs e)
        {
            Session["SearchItem"]= txtSearchItem.Text;
            Response.Redirect("~/PublicUser/ProductSearchItem.aspx");
            
        }
     
    }
}