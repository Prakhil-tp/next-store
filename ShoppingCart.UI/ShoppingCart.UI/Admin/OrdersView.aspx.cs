using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class OrdersView : System.Web.UI.Page
    {

        ProductOrderController _productOrder = new ProductOrderController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            MultiView1.ActiveViewIndex = 0;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProfileView")
            {
                HiddenField1.Value = e.CommandArgument.ToString();
                MultiView1.ActiveViewIndex = 1;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditDelivary")
            {
                int poid=Convert.ToInt32(e.CommandArgument);
                _productOrder.UpdateStatus("true", poid);
                GridView1.DataBind();
            }
        }
    }
}