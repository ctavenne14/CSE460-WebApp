using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web;

namespace WebApplication460
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IRestService" in both code and config file together.
    [ServiceContract]
    public interface IRestService
    {
        [OperationContract]
        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "/password?firstName={firstName}&lastName={lastName}&age={age}")]
        results password(string firstName, string lastName, int age);

        [OperationContract]
        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "/loginId?age={age}")]
        results loginId(int age);
    }

    [DataContract]

    public class results
    {
        [DataMember]
        public string pass { get; set; }

        [DataMember]
        public int login { get; set; }
    }
}
