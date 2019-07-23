
namespace Drole.Models {
    public class User {
        public int id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }

        public User(int id, string firstName, string lastName, string email) {
            this.id = id;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
        }

        public User (string id) {
            var data = new MyDB ().Where ("Id", id).Limit(1).Get("Users").Rows[0];
            this.id = (int)data["Id"];
            this.firstName = data["FirstName"].ToString ();
            this.lastName = data["LastName"].ToString ();
            this.email = data["Email"].ToString ();
        }

    }


}