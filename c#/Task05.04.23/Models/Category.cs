using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Task05._04._23.Models.Common;

namespace Task05._04._23.Models
{
    public class Category:BaseAuditibleEntity
    {
        //public int Id { get; set; }
        public string Name { get; set; }
        public string ParentId { get; set; }
        //public DateTime CreatedAt { get; set; }
        //public DateTime UpdatedAt { get; set; }
    }
}
