using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Drole.Models {
    public class DbListAdapter {
        public string field { get; set; }
        public string value { get; set; }

        public DbListAdapter(string field, string value) {
            this.field = field;
            this.value = value;
        }
    }
}