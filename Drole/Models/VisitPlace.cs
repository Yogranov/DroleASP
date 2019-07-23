using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Drole.Models
{
    public class VisitPlace {
        public int id { get; set; }
        public string name { get; set; }
        public string imgUrl { get; set; }
        public string content { get; set; }
        public int countryId { get; set; }


        public VisitPlace(int id, string name, string imgUrl, string content) {
            this.id = id;
            this.name = name;
            this.imgUrl = imgUrl;
            this.content = content;
        }
    }
}