using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;
using System.IO;
namespace ShoppingCart.UI.Admin
{
    public partial class Discount : System.Web.UI.Page
    {
        DiscountController _discount = new DiscountController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdAdd_Click(object sender, EventArgs e)
        {
          //// _discount.Insert(TxtProductId.Text,TxtProductName.Text,TxtValidity.Text,TxtDiscountPercentage.Text);
                
           
        }
        
    }
   
}
