using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Account
    {
        private int _accountId;

        public int AccountId
        {
            get { return _accountId; }
            set { _accountId = value; }
        }
        private string _username;

        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        private string _password;

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        private string _role;

        public string Role
        {
            get { return _role; }
            set { _role = value; }
        }
        
        
        
        
    }
}
