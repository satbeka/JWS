package ws.client;


public class BankPayClient {
    public static String KKBws1C(String bankID,
            String aOrderID,
            String payerIDN,
            String amount,
            String aPayDate  //"2015.04.17_15.05.41";
    ) {

        //com.sun.xml.internal.ws.transport.http.client.HttpTransportPipe.dump=true;

        BankPayImplService bankPayImplService = new BankPayImplService();
        BankPay bankPay = bankPayImplService.getBankPayImplPort();
        String res=bankPay.GetBooleanBankPay(
                bankID,aOrderID,payerIDN,amount,aPayDate
        );
        System.out.println("resp res="+res);
        return res;
    }
}
