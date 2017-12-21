using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Discount
    {
        private int _discountId;

        public int DiscountId
        {
            get { return _discountId; }
            set { _discountId = value; }
        }
        private int _productId;

        public int ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _discountPercentage;

        public string DiscountPercentage
        {
            get { return _discountPercentage; }
            set { _discountPercentage = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set {_name = value; }
        }
        private string _validityFrom ;

        public string ValidityFrom
        {
            get { return _validityFrom; }
            set { _validityFrom = value; }
        }
        private string _validitytO;

        public string ValidityTo
        {
            get { return _validitytO; }
            set { _validitytO = value; }
        }
        
        private int _price;

        public int Price
        {
            get { return _price; }
            set { _price = value; }
        }
        
        public Discount()
        {
                
        }
        public Discount(int DiscountId,int ProductId,string DiscountPercentage,string Name,string Validity)
        {
            _discountId = DiscountId;
            _productId = ProductId;
            _discountPercentage = DiscountPercentage;
            _name = Name;
           

        }

        
    }
}
