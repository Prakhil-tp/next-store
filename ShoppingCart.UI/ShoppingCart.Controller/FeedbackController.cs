using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ShoppingCart.Model;
using ShoppingCart.Model.ShoppingCardDbTableAdapters;

namespace ShoppingCart.Controller
{
    public class FeedbackController
    {
        FeedbackTableAdapter _feedback = new FeedbackTableAdapter();
        public void Insert(string feedback,int userid,DateTime date)
        {
            _feedback.Insert(feedback,userid,date);
        }
        public void Update(string feedback,int userid,DateTime date,int feedbackid)
        {
            _feedback.Update(feedback,userid,date,feedbackid);
        }
        public void Delete(int feedbackid)
        {
            _feedback.Delete(feedbackid);
        }
        public IEnumerable<Feedback> GetallData()
        {
            List<Feedback> li = new List<Feedback>();
            var data = from c in _feedback.GetData() select c;
            foreach (var item in data)
            {
                li.Add(new Feedback
                {
                   FeedbackContent=item.Feedback,
                   FeedbackId=item.FeedbackId

                });
            }
            return li;
        }
    }
}
