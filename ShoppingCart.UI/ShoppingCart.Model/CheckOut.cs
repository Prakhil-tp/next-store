using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class CheckOut
    {
        public int CartId { get; set; }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private float _price;

        public float Price
        {
            get { return _price; }
            set { _price = value; }
        }
        private int _size;

        public int Size
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
        private int _colorid;
        public int ColorId
        {
            get { return _colorid; }
            set { _colorid = value; }
        }
        private int _total;

        public int Total
        {
            get { return _total; }
            set { _total = value; }
        }
        
        
    }
}
