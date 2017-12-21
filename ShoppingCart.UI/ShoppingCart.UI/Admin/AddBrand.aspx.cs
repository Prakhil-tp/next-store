using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class AddBrand : System.Web.UI.Page
    {
        BrandController brand = new BrandController();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            var item = brand.BrandItemSearch(txtbrand.Text);

            if (item == true)
            {
                brand.Insert(txtbrand.Text);
                GridView1.DataBind();
                int Brandid = brand.GetMaxId();
                string path = "~/Images/BrandLogos/" + Brandid + ".jpg";
                FileUpload1.SaveAs(Server.MapPath(path));
            }
        }
        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditView")
            {
                int brandid = Convert.ToInt32(e.CommandArgument);
                Session["brandid"] = brandid;
                Response.Redirect("~/Admin/EditBrand.aspx");
            }
        }


    }
}