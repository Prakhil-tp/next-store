using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class ColourImage
    {
        private string _image;

        public string Image
        {
            get { return _image; }
            set { _image = value; }
        }
        private string _nextImage;

        public string NextImage
        {
            get { return _nextImage; }
            set { _nextImage = value; }
        }
        
        
    }
}
