using System.Collections.Generic;
using System.Linq;

namespace Drole.Models {
    public class Country {
        public int id { get; set; }
        public string name { get; set; }
        public User creator { get; set; }
        public string englishName { get; set; }
        public string iconImgUrl { get; set; }
        public List<string> rules { get; set; }
        public string backgroundImgUrl { get; set; }

        public Country(int id, string name, User creator, string englishName, string rules) {
            this.id = id;
            this.name = name;
            this.creator = creator;
            this.englishName = englishName;
            this.iconImgUrl = "/Content/Uploads/" + englishName + "/iconImage.jpg";
            this.backgroundImgUrl = "/Content/Uploads/" + englishName + "/backgroundImage.jpg";
            this.rules = rules.Split(':').ToList();
        }
    }
}