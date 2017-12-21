using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
    public class ProductOrderController
    {
        ProductOrderTableAdapter _productOrder = new ProductOrderTableAdapter();
        public void insert(ProductOrder productOrder)
        {
            _productOrder.Insert(productOrder.OrderId,productOrder._Size12,productOrder.Quantity,productOrder.Status,productOrder.ProductId);
        }
        public IEnumerable<ProductOrder> GetallData()
        {
            List<ProductOrder> li = new List<ProductOrder>();
            var data = from c in _productOrder.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new ProductOrder
                        {
                            ProductOrderId = item.ProductOrderId,
                            OrderId = item.OrderId,
                            ProductId = item.ColorId,
                            Status=item.Status,
                            _Size12=item.Size,
                            Quantity=item.Quantity

                        });
            } return li;
        
        
        }

        public void UpdateStatus(string status, int productorderId)
        {
            _productOrder.UpdateStatus(status, productorderId);
        }
    }
}
