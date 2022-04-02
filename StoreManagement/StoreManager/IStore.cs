using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.StoreManager
{
    [ServiceContract]
    public interface IStore
    {
        [OperationContract]
        bool Add(Medicine m);

        [OperationContract]
        bool Delete(int id);

        [OperationContract]
        bool Update(Medicine m);

        [OperationContract]
        DataSet Display();
    }

    [DataContract]
    public class Medicine
    {
        public int Id;
        string categoryname = "default";
        string brandname = "Cipla";
        string medicinename = "Azithromycin";
        bool type = true; //true for tablet and false for liquid
        string description = "Used to cure throat infection";
        DateTime expirydate = new DateTime(2022, 3, 21);
        int stockleft = 100;
        float price = 120;


        public Medicine() { }
        public Medicine(string cname, string bname, string mname, bool type, string desc, DateTime exp, int stock, float price )
        {
            this.categoryname = cname;
            this.brandname = bname;
            this.medicinename = mname;
            this.type = type;
            this.description = desc;
            this.expirydate = exp;
            this.stockleft = stock;
            this.price = price; 
        }


        [DataMember]
        public int id
        {
            get { return Id; }
            set { Id = value; }
        }
        [DataMember]
        public string CategoryName
        {
            get { return categoryname; }
            set { categoryname = value; }
        }
        [DataMember]
        public string BrandName
        {
            get { return brandname; }
            set { brandname = value; }
        }
        [DataMember]
        public string MedicineName
        {
            get { return medicinename; }
            set { medicinename = value; }
        }
        [DataMember]
        public bool Type
        {
            get { return type; }
            set { type = value; }
        }
        [DataMember]
        public string Description
        {
            get { return description; }
            set { description = value; }
        }
        [DataMember]
        public DateTime ExpDate 
        {
            get { return expirydate; }
            set { expirydate = value; }
        }

        [DataMember]
        public int Stock
        {
            get { return stockleft; }
            set { stockleft = value; }
        }
        [DataMember]
        public float Price
        {
            get { return price; }
            set { price = value; }
        }
    }
}
