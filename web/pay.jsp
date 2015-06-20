<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head><title>Order Detail</title></head>

<body>

Отправляемые данные в ккб: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

  <%

String ord=request.getParameter("orderId");
String sum=request.getParameter("sumPaid");
  String send = (String) request.getAttribute("send");
      String Base64Content=request.getAttribute("Base64Content").toString();



  %>
  <br>Номер счета: <%=request.getParameter("orderId")%><br>
  <br>Сумма: <%=request.getParameter("sumPaid")%><br>
Шифрование в Base64Content: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=Base64Content%>
<p>


<form name="SendOrder" method="post" action="http://3dsecure.kkb.kz/jsp/process/logon.jsp">
   <input type="hidden" name="Signed_Order_B64" value="<%=Base64Content%>"><br>
   E-mail: <input type="text" name="email" size=50 maxlength=50  value=<%=request.getParameter("email")%>><br>
   <input type="hidden" name="Language" value="eng"><br>
   <input type="hidden" name="BackLink" value="http://ALA-WS-OIT-169:8080/index.jsp"><br>
   <input type="hidden" name="PostLink" value="http://185.48.126.77:8080/do/pl/pl.jsp"><br>
    <input type="hidden" name="FailureBackLink" value="http://185.48.126.77:8080/do/pl/pl_err.jsp"><br>

   <input type="hidden" name="appendix" size=50 maxlength=50 value="<%=send%>"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br>

   Со счетом согласен (-а)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit"> <img src="/resources/images/but_kkb.png" /> Да, перейти к оплате</button>

</form></center>
<p>




</body>

</html>

