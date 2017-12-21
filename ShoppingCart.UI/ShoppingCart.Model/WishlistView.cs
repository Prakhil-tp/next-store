using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class WishlistView
    {
        private int _wishlistId;

        public int WishlistId
        {
            get { return _wishlistId; }
            set { _wishlistId = value; }
        }
        private int _colorId;

        public int ColorId
        {
            get { return _colorId; }
            set { _colorId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _productName;

        public string ProductName
        {
            get { return _productName; }
            set { _productName = value; }
        }
        private float _productPrice;

        public float ProductPrice
        {
            get { return _productPrice; }
            set { _productPrice = value; }
        }
        private int _size;

        public int Size
        {
            get { return _size; }
            set { _size = value; }
        }
        
        
        
        
    }
}
