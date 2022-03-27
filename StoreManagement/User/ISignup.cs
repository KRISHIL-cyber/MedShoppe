using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.User
{
    [ServiceContract]
    public interface ISignup
    {
        [OperationContract]
        bool Signup(user u);
    }

    [DataContract]
    public class user
    {
        public int id { get; set; }
        bool seller = false;
        string username = "user1";
        string password = "user1@123";
        string email = "user1@gmail.com";
        string mobileno = "1234567890";
        string address = "Nadiad,Gujarat";


        public user() { }
        public user(bool seller, string uname, string pass, string email, string mobile, string address)
        {
            this.seller = seller;
            this.username = uname;
            this.password = pass;
            this.email = email;
            this.mobileno = mobile;
            this.address = address;
        }

        [DataMember]
        public bool IsSeller
        {
            get { return seller; }
            set { seller = value; }
        }
        [DataMember]
        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        [DataMember]
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        [DataMember]
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        [DataMember]
        public string Mobileno
        {
            get { return mobileno; }
            set { mobileno = value; }
        }

        [DataMember]
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
    }
}
