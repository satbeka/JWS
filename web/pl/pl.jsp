<%@ page
%>

 <%
try{
    String res=request.getAttribute("res").toString();
    if(res=="0"){
        out.print("0");      //0

    }else{

        out.print("1");
    }

 }catch(Exception e) {
      out.print("<br>error_pl_7872: "+ e + "<p>");
 }
%>
<html>

<head><title> 1 0 1 0 10 </title></head>
<body>
<%
  out.println(" xaxa Your IP address is " + request.getRemoteAddr());
    out.print("send to kkb =" +request.getAttribute("res").toString());
%>
</body>

</html>