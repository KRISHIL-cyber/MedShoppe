﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.User
{
    [ServiceContract]
    public interface ILogin
    {
        [OperationContract]
        bool Login(user u);
    }

}
