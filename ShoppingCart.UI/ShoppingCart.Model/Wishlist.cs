using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
    public class Wishlist
    {
        private int _wishlistId;

        public int WishlistId
        {
            get { return _wishlistId; }
            set { _wishlistId = value; }
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

        private int _colorid;

        public int ColorId
        {
            get { return _colorid; }
            set { _colorid = value; }
        }
        
        
    }
}
