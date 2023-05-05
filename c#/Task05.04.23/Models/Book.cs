using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Task05._04._23.Models.Common;

namespace Task05._04._23.Models
{
    public class Book:BaseAuditibleEntity
    {
        //public int Id { get; set; }
        //public DateTime CreatedAt { get; set; }
        //public DateTime UpdatedAt { get; set; }

        public string Title { get; set; }
        public string Author { get; set; }
        public float Price { get; set; }
        public float DiscountPrice { get; set; }
        public int Quantity { get; set; }
        public int UserId { get; set; }
        public string CategoryId { get; set; }
        


    }
}
