using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
    public class RegisteredUser
    {
        private int _userId;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _address;

        public string Address
        {
            get { return _address; }
            set {_address = value; }
        }
        private string _pincode;

        public string Pincode 
        {
            get { return _pincode; }
            set {_pincode = value; }
        }
        private string _phNo;

        public string PhNo 
        {
            get { return _phNo; }
            set {_phNo = value; }
        }
        private string _email;

        public string Email 
        {
            get { return _email; }
            set {_email = value; }
        }
        private string _district;

        public string District
        {
            get { return _district; }
            set {_district = value; }
        }
        private string _locality;

        public string Locality 
        {
            get { return _locality; }
            set { _locality = value; }
        }
        private string _password;

        public string Password
        {
            get { return _password; }
            set {_password= value; }
        }
        private string _userName;

        public string UserName 
        {
            get { return _userName; }
            set {_userName= value; }
        }
        private string _status;

        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }
        private string _state;

        public string State
        {
            get { return _state; }
            set { _state = value; }
        }
        
        public RegisteredUser()
        {
                
        }
        public RegisteredUser(int UserId,string Name,string Address,string Pincode,string PhNo,string Email,string District,string Locality,string Password,string UserName,string Status,string State)
        {
            _userId = UserId;
            _name = Name;
            _address = Address;
            _pincode = Pincode;
            _phNo = PhNo;
            _email = Email;
            _district = District;
            _locality = Locality;
            _password = Password;
            _status = Status;
            _state = State;
        }
        
    }

}
