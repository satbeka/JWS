package ws.client;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;


    @WebService
    @SOAPBinding(style = SOAPBinding.Style.RPC)
    public interface BankPay {

        @WebMethod(operationName="BankPay")
        public String GetBooleanBankPay(
                @WebParam(name="BankID")String bankID,
                @WebParam(name="AOrderID")String aOrderID,
                @WebParam(name="PayerIDN")String payerIDN,
                @WebParam(name="Amount")String amount,
                @WebParam(name="APayDate")String aPayDate);


        ////BankPay(string BankID, string AOrderID, string PayerIDN, string Amount, string APayDate)

    }

