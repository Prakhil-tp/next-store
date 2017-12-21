using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShoppingCart.Model
{
   public class Feedback
    {
        private int _feedbackId;

        public int FeedbackId
        {
            get { return _feedbackId; }
            set { _feedbackId = value; }
        }
        private string _feedback;

        public string  FeedbackContent 
        {
            get { return _feedback; }
            set { _feedback = value; }
        }
        private int _userid;

        public int UserId
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private DateTime _date;

        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        
        
        public Feedback()
        {

        }
        public Feedback(int FeedbackId,string Feedback,int Userid,DateTime Date)
        {
            _feedbackId = FeedbackId;
            _feedback = Feedback;
            _userid = Userid;
            _date = Date;

        }
        
        

    }
}
