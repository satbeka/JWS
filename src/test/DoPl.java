package test;

import comp.KKBSign;
import oracle.sql.CLOB;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import java.sql.*;


public class DoPl {

    public static void doPl(){

        //Âîò ÷òî ÂÀÆÍÎ !!!!!!!!!!! //Âîò ÷òî ÂÀÆÍÎ !!!!!!!!!!! //Âîò ÷òî ÂÀÆÍÎ !!!!!!!!!!!
        try {

            String logs=
"<document><bank name=\"Kazkommertsbank JSC\"><customer name=\"ggggg\" mail=\"SAbdikalikov@tisr.kz\" phone=\"\"><merchant cert_id=\"00C182B189\" name=\"null\"><order order_id=\"044787\" amount=\"200009\" currency=\"398\"><department merchant_id=\"92061101\" amount=\"200009\" abonent_id=\"1111111\"/></order></merchant><merchant_sign type=\"RSA\"/></customer><customer_sign type=\"RSA\"/><results timestamp=\"2015-04-14 17:07:30\"><payment merchant_id=\"92061101\" card=\"548318-XX-XXXX-0293\" amount=\"200009\" reference=\"150414170730\" approval_code=\"170730\" recur=\"1\" response_code=\"00\" Secure=\"Yes\" card_bin=\"KAZ\" c_hash=\"D643983890D0003EA973E88A346CDDBE\"/></results></bank><bank_sign cert_id=\"00C18327E8\" type=\"SHA/RSA\">S1wiIPb44lkXG5cwvuu3du4jidCIS GdsBJ4w45qGov1aVCE CxOgGrk5jQwynil451FA5o9h4Dxk51 zpdNkRURax1KAVPYXmGIjbNSoTEh7bJW15G0aPGr70OQXUyi eaOV6XD6NbyseHOl11QrGOMzY1VXfjGSktGto28EII=</bank_sign></document>"
                    ;
            logs= URLDecoder.decode(logs, "Cp1251");
            System.out.println("logs===="+logs);
            //System.out.println(System.getProperty("java.library.path") );
            ////ñíîâà â ÕÌË

            Document
                    confXml=DocumentHelper.parseText(logs);
            Element eBank=(Element)confXml.getRootElement().selectSingleNode("//bank");
            Element order= (Element)eBank.selectSingleNode("//order");
            String orderID=order.attributeValue("order_id");

            System.out.println("orderId===="+orderID);

            Element departament=(Element)order.selectSingleNode("//department");
            String abonentId=departament.attributeValue("abonent_id");


            System.out.println("abonentId====" + abonentId);

            String reference =   ((Element)confXml.getRootElement().selectSingleNode("//payment")).attributeValue("reference");
            String merchant_id =   ((Element)confXml.getRootElement().selectSingleNode("//payment")).attributeValue("merchant_id");

            System.out.println("merchant_id===="+merchant_id);

            Driver myDriver = new oracle.jdbc.driver.OracleDriver();
            DriverManager.registerDriver( myDriver );

            String URL = "jdbc:oracle:thin:@ala-srv-db-tst1.tisr.kz:1521:Test01";
            String USER = "ercb";
            String PASS = "ercb";
            Connection conn = DriverManager.getConnection(URL, USER, PASS);
            String insSQL = "insert into KLIENT_LOG_KKB\n" +
                    "                (\n" +
                    "                        client_id,\n" +
                    "                        postlink_xml,\n" +
                    "                        err\n" +
                    "                    )\n" +
                    "values (?,?,?)";
            PreparedStatement pS=conn.prepareStatement(insSQL);
            pS.setString(1, abonentId);

            CLOB clob = null;
            clob = CLOB.createTemporary(conn, false, CLOB.DURATION_SESSION);
            clob.setString(1, logs);

            pS.setClob(2, clob);


            KKBSign ksig=new KKBSign();
            String textXml= eBank.asXML();
            String textSign =  ((Element)confXml.getRootElement().selectSingleNode("//bank_sign")).getText();
            String ks= "D:\\tisr job\\kkb\\MERCHANT\\kkbsign_java\\test.jks" ;
            textSign=textSign.replaceAll(" ", "+");
            String res=ksig.verify(textXml,textSign, ks,  "kkbca", "nissan") +"";
            System.out.println("888888res.indexOf(true)=" + res.indexOf("true"));

            if(res.indexOf("true")==0){
               pS.setInt(3,0);

            }else{
                pS.setInt(3,1);
            }
               pS.executeUpdate();
            System.out.println("   pS.executeUpdate().......");
               conn.commit();
            if (pS != null) {
                pS.close();
            }

            if (conn != null) {
                conn.close();
            }


         /*   */
        } catch (Exception e) {
            System.out.println("888888888e.toString()=====" + e.toString());

        }


    }


    public static void main(String[] args) {

        DoPl.doPl();

    }

}
