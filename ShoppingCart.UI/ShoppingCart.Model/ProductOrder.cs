using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class ProductOrder
    {
        private int _productOrderId;

        public int ProductOrderId
        {
            get { return _productOrderId; }
            set { _productOrderId = value; }
        }
        private int _orderId;

        public int OrderId
        {
            get { return _orderId; }
            set { _orderId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private int _size;

        public int _Size12
        {
            get { return _size; }
            set { _size = value; }
        }

        private int _quantity;

        public int Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
        private string _status;

        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }
        
        
        public ProductOrder()
        {

        }
        public ProductOrder(int ProductOrderId, int OrderId, int ProductId)
        {
            _productOrderId = ProductOrderId;
            _orderId = OrderId;
            _productId = ProductId;
        }
        


        
        
    }
}
