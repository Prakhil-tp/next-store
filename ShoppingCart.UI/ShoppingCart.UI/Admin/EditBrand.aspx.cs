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
    public partial class EditBrand : System.Web.UI.Page
    {
        BrandController brand = new BrandController();
        static int brandid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                brandid = Convert.ToInt32(Session["brandid"]);
                Brand b = brand.Search(brandid);
                txtbname.Text = b.BrandName;
            }
        }

        protected void Cmd_Edit_Click(object sender, EventArgs e)
        {
            brand.Update(new Brand{
            BrandName=txtbname.Text,
            BrandId=brandid
            });
            brandid = Convert.ToInt32(Session["brandid"]);
            string path = "~/Images/BrandLogos/" + brandid + ".jpg";
            FileUpload1.SaveAs(Server.MapPath(path));
        }
    }
}