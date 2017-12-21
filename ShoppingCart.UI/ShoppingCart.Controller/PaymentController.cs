using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
   public class PaymentController
    {
       PaymentTableAdapter _payment = new PaymentTableAdapter();

       public void insert(Payment payment)
       {
           _payment.Insert(payment.BankName, payment.AccountNo, payment.PinNo, payment.CardNo, payment.Validity, payment.CvvNo, payment.CustomerName, payment.Amount);
       }

    }
}
