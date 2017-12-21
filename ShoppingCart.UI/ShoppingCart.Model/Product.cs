using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
    public class Product
    {
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
            set {_name = value; }
        }
        private int _brandId;

        public int BrandId
        {
            get { return _brandId; }
            set { _brandId = value; }
        }
        private string _description;

        public string Description 
        {
            get { return _description; }
            set { _description = value; }
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
        private int _stock;

        public int Stock
        {
            get { return _stock; }
            set { _stock = value; }
        }
        private int _categoryId;

        public int CategoryId
        {
            get { return _categoryId; }
            set { _categoryId = value; }
        }
        private string _colour;

        public string Colour
        {
            get { return _colour; }
            set { _colour = value; }
        }


        private int _myColorId;

        public int MyColorId
        {
            get { return _myColorId; }
            set { _myColorId = value; }
        }
        
        public Product()
        {

        }
        public Product(int ProductId,string Name,int BrandId,string Description,float Price,int Size,int Stock,int CategoryId,string Colour)
        {
            _productId = ProductId;
            _name = Name;
            _brandId = BrandId;
            _description = Description;
            _price = Price;
            _size = Size;
            _stock = Stock;
            _categoryId = CategoryId;
            _colour = Colour;
        }
    }

}
