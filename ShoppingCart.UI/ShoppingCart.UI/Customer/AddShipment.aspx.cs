using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI.Customer
{
    public partial class AddShipment : System.Web.UI.Page
    {
        ShipmentController shipment = new ShipmentController();
        CartController _cart = new CartController();
        RegisteredUserController _user = new RegisteredUserController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
             int cartid =Convert.ToInt32( Session["CartId"]);
             int userid = Convert.ToInt32(Session["UserId"]);
             shipment.Insert(userid,txtName.Text, txtAddress.Text, TxtPlace.Text, TxtDistrict.Text, TxtState.Text, 
                 TxtPincode.Text, TxtMobile.Text,cartid);
            var GetallCartData= _cart.GetCartData(userid);
            
            foreach (var item in GetallCartData)
            {
                _cart.Delete(item.CartId);
            }
            txtAddress.Text = "";
            if (RadioButtonList2.SelectedIndex == 0)
            {
                Response.Write("<script>alert('successfully completed')</script>");
                Response.Redirect("~/Customer/UserHomePage.aspx");
            }
            else 
            {
                Response.Redirect("~/Customer/NetBanking.aspx");
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text == "Default Address")
            {
                MultiView1.ActiveViewIndex = 0;
                int userid = Convert.ToInt32(Session["UserId"]);
                var data=_user.search(userid);
                txtName.Text = data.Name;
                txtAddress.Text = data.Address;
                TxtMobile.Text = data.PhNo;
                TxtDistrict.Text = data.District;
                TxtPincode.Text = data.Pincode;
                TxtPlace.Text = data.Locality;
                TxtState.Text = data.State;
                
            }
            else 
            {
                txtName.Text = "";
                txtAddress.Text = "";
                TxtMobile.Text = "";
                TxtDistrict.Text = "";
                TxtPincode.Text = "";
                TxtPlace.Text = "";
                TxtState.Text = "";
            }
        }
    }
}