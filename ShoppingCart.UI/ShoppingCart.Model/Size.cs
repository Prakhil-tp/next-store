using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
    public class Size
    {
        private int _sizeId;

        public int SizeId
        {
            get { return _sizeId; }
            set { _sizeId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private int _colourId;

        public int ColourId
        {
            get { return _colourId; }
            set { _colourId = value; }
        }
        private int _productSize;

        public int ProductSize
        {
            get { return _productSize; }
            set { _productSize = value; }
        }
        private int _quantity;

        public int Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
        
        public Size()
        { 
        }
        public Size(int SizeId,int ProductId,int ColourId,int ProductSize,int Quantity)
        {
            _sizeId = SizeId;
            _productId = ProductId;
            _colourId = ColourId;
            _productSize = ProductSize;
            _quantity = Quantity;

        }
        
    }
}
