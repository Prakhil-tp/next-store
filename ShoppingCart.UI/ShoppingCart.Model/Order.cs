using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Order
    {
        private int _orderId;

        public int OrderId
        {
            get { return _orderId; }
            set { _orderId = value; }
        }
        private DateTime _orderDate;

        public DateTime  OrderDate
        {
            get { return _orderDate; }
            set {_orderDate = value; }
        }
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private float _totalPrice;

        public float TotalPrice
        {
            get { return _totalPrice; }
            set { _totalPrice = value; }
        }
        private int _isProcessedOrNot;

        public int IsProcessedOrNot 
        {
            get { return _isProcessedOrNot; }
            set { _isProcessedOrNot = value; }
        }
        private DateTime _deliveryDate;

        public DateTime DeliveryDate 
        {
            get { return _deliveryDate ; }
            set { _deliveryDate  = value; }
        }
        public Order()
        {
                
        }
        public Order(int OrderId,DateTime OrderDate,int UserId,float Totalprice,int IsProcessedOrNot,DateTime DeliveryDate)
        {
            _orderId = OrderId;
            _orderDate = OrderDate;
            _userId = UserId;
            _totalPrice = Totalprice;
            _isProcessedOrNot = IsProcessedOrNot;
            _deliveryDate = DeliveryDate;

        }
        
        
        
        
    }
}
