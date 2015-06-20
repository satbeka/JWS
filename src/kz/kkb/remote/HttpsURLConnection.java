package kz.kkb.remote;


import comp.KKBSign;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class HttpsURLConnection {

    final String merchantId="92061101";
    final String certId="00C182B189";
    /*certificate=	"00C182B189"
    merchant_id=	"92061101"
*/

    public static void main(String[] args) {

        HttpsURLConnection http = new HttpsURLConnection();
        System.out.println("Testing 1 - Send Http GET request");
                    http.sendGet("100000","10501444.00","150519122832","122832","complete");

    }


    // HTTP GET request
    public int sendGet(String orderId, String amount,String reference,String approval_code, String commandType ) {

        int rez=0;
        String url = "https://3dsecure.kkb.kz/jsp/remote/control.jsp?";

        String sCommandText ="";
        KKBSign test=new KKBSign();
try {
        Document pageXml= DocumentHelper.createDocument();
        Element Root = pageXml.addElement("document");
        Element merchantElem=Root.addElement("merchant");
        merchantElem.addAttribute("id",  merchantId);
        Element commandElem=merchantElem.addElement("command");
        commandElem.addAttribute("type",  commandType);
        Element paymentElem=merchantElem.addElement("payment");
        paymentElem.addAttribute("reference",  reference);
        paymentElem.addAttribute("approval_code",  approval_code);
        paymentElem.addAttribute("orderid",  orderId);
        paymentElem.addAttribute("amount",  amount);
        paymentElem.addAttribute("currency_code",  "398");
        Element reasonElem=merchantElem.addElement("reason");
        reasonElem.addText("Only for reverse");

        sCommandText  =(merchantElem.asXML()).toString();

        System.out.println("merchantElem: "+ sCommandText +"<p>");

        String ks=System.getProperty("user.dir")+"\\src\\kz\\kkb\\remote\\sign_resources\\test.jks" ;

        //textSign=textSign.replaceAll(" ", "+");
        //String ks= "D:\\tisr job\\kkb\\MERCHANT\\kkbsign_java\\test.jks" ;
        String keystore=ks;
        String alias="cert";
        String keypass="patrol";
        String storepass="nissan";

        String Base64Content=test.sign64(sCommandText,keystore,alias,"patrol","nissan");
        Element merchant_signElem=Root.addElement("merchant_sign");
        merchant_signElem.addAttribute("type",  "RSA");
        merchant_signElem.addAttribute("cert_id",  certId);

        merchant_signElem.addText(Base64Content);

        System.out.println("Document: "+ Root.asXML() +"<p>");

        String Document =Root.asXML()+"";

        sCommandText= URLEncoder.encode(Document) ;
        url=url+sCommandText;
        System.out.println("url="+url);
        URL obj = new URL(url);

        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // optional default is GET
        con.setRequestMethod("GET");

        int responseCode = con.getResponseCode();
        System.out.println("\nSending 'GET' request to URL : " + url);
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuffer response = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //print result
        System.out.println(response.toString());
        rez=1;
        return rez;
}
catch(Exception e){
    System.out.println("Unable to create file:" + e.getMessage());
}


        return rez;
    }
}
