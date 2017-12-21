using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI
{
    public partial class Default : System.Web.UI.Page
    {
        AccountController account = new AccountController();
        RegisteredUserController user = new RegisteredUserController();
        ColourController _color = new ColourController();
        CategoryController _category = new CategoryController();
        BrandController _brand = new BrandController();
     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                foreach (var item in _brand.GetallData())
                {
                    Button b = new Button
                    {
                        Height = 30,
                        Width = 100,
                        Text = item.BrandName,
                        CssClass = "submenuButton"
                    };
                    PlaceHolder1.Controls.Add(b);
                }
                foreach (var item in _category.GetallData())
                {
                    Button b = new Button
                    {
                        Height = 30,
                        Width = 100,
                        Text = item.CategoryName,
                        CssClass = "submenuButton"
                    };
                    PlaceHolder2.Controls.Add(b);
                }

            }
        }


      

        //protected void CmdRegister_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Customer/UserRegistration.aspx");
        //}

        protected void cmdLogin_Click(object sender, EventArgs e)
        {



            Account a = account.getAccount(txtUsername.Text, txtPassword.Text);
            if (a != null)
            {
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
            }
            else
            {
              //  Lblinvalid.Visible = true;
            }
        }

        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{

        //}
    }
}