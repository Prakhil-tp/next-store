using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Colour
    {
        private int _colourId;

        public int ColourId
        {
            get { return _colourId; }
            set { _colourId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _colourname;

        public string Colourname
        {
            get { return _colourname; }
            set { _colourname = value; }
        }
        
    }
}
