using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Payment
    {
        private int _paymentId;

        public int PaymentId
        {
            get { return _paymentId; }
            set { _paymentId = value; }
        }
        private string _bankName;

        public string  BankName
        {
            get { return _bankName; }
            set { _bankName = value; }
        }
        private string _customerName;

        public string CustomerName
        {
            get { return _customerName; }
            set { _customerName = value; }
        }
        private int _accountNo;

        public int AccountNo
        {
            get { return _accountNo; }
            set { _accountNo = value; }
        }
        private int _pinNo;

        public int PinNo
        {
            get { return _pinNo; }
            set { _pinNo = value; }
        }
        private int _cvvNo;

        public int CvvNo
        {
            get { return _cvvNo; }
            set { _cvvNo = value; }
        }
        private int _cardNo;

        public int CardNo
        {
            get { return _cardNo; }
            set { _cardNo = value; }
        }
        private string _validity;

        public string Validity
        {
            get { return _validity; }
            set { _validity = value; }
        }
        private int _amount;

        public int Amount
        {
            get { return _amount; }
            set { _amount = value; }
        }
        

        
        
        
        
        
    }
}
