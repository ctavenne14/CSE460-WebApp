using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;


namespace WebApplication460
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SoapButton_Click(object sender, EventArgs e)
        {
            SoapServiceReference.SoapServiceClient soapService = new SoapServiceReference.SoapServiceClient();

            if(firstName.Text.Length >= 2 && lastName.Text.Length >=2 && age.Text != null)
            {
                string first = firstName.Text;
                string last = lastName.Text;
                int years = Convert.ToInt32(age.Text);

                int id = soapService.loginId(years);

                SoapUserName.Text = id.ToString();

                string results = soapService.password(first, last, years);

                SoapPassword.Text = results;
            }
            else
            {
                error.Text = "Please enter names greater than length 2 and an age";
            }
        }

        protected void RestButton_Click(object sender, EventArgs e)
        {
            if (firstName.Text.Length >= 2 && lastName.Text.Length >= 2 && age.Text != null)
            {
                string first = firstName.Text;
                string last = lastName.Text;
                int years = Convert.ToInt32(age.Text);

                string url = @"http://localhost:3026/RestService.svc/password?firstName=" + first + "&lastName="+last + "&age=" +years;

                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                WebResponse response = request.GetResponse();
                Stream responseStream = response.GetResponseStream();

                StreamReader reader = new StreamReader(responseStream);
                String json = reader.ReadToEnd();

                results r = JsonConvert.DeserializeObject<results>(json);


                RestPassword.Text = r.pass.ToString();

                string url1 = @"http://localhost:3026/RestService.svc/loginId?age="+years;

                HttpWebRequest request1 = (HttpWebRequest)WebRequest.Create(url1);
                WebResponse response1 = request1.GetResponse();
                Stream responseStream1 = response1.GetResponseStream();

                StreamReader reader1 = new StreamReader(responseStream1);
                String json1 = reader1.ReadToEnd();

                results r1 = JsonConvert.DeserializeObject<results>(json1);

                RestUserName.Text = r1.login.ToString();
            }
            else
            {
                error.Text = "Please enter names greater than length 2 and an age";
            }
        }
    }
}