using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Customer
{
    public partial class NetBanking : System.Web.UI.Page
    {
        PaymentController _payment = new PaymentController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LbTotalAmount.Text = (Session["TotalAmount"]).ToString();
            }
        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            _payment.insert(new Payment 
            {
            BankName=(DropDownListBankName.SelectedItem.Text).ToString(),
            CustomerName=TxtCustomerName.Text,
            AccountNo=Convert.ToInt32(TxtAccountNo),
            CvvNo = Convert.ToInt32(TxtCvvNo.Text),
            CardNo = Convert.ToInt32(TxtCardNo.Text),
            PinNo=Convert.ToInt32(TxtPinNo.Text),
            Validity = TxtValidity.Text,
            Amount = Convert.ToInt32(LabelTotalPrice.Text)
            });
            Response.Write("<script>alert('successfully completed')</script>");
            Response.Redirect("~/Customer/UserHomePage.aspx");
        }
    }
}