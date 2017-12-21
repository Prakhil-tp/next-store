using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Cart
    {
        private int _cartId;

        public int CartId
        {
            get { return _cartId; }
            set { _cartId = value; }
        }


        private int _newcolorId;

        public int NewColorId
        {
            get { return _newcolorId; }
            set { _newcolorId = value; }
        }
        
        private string _coloir;

        public string ColorId
        {
            get { return _coloir; }
            set { _coloir = value; }
        }
        
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private int _quantity;

        public int Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
        private DateTime _date;

        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        private int _sizr;

        public int Size
        {
            get { return _sizr; }
            set { _sizr = value; }
        }
        
        public Cart()
        {

        }
        public Cart(int CartId,int UserId,int ProductId,int Quantity,DateTime Date)
        {
            _cartId = CartId;
            _userId = UserId;
            _productId = ProductId;
            _quantity = Quantity;
            _date = Date;
        }

        
        
        
        
    }
}
