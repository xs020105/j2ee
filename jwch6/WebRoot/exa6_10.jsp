<%@page contentType="text/html; charset=GBK"%>

<html>
<head>
<title>JSP EL��ʽ����</title>
</head>
<body>
<h2>JSP EL����ʽ����</h2>
<% Cookie aaa=new Cookie("userID","wangwu");
   response.addCookie(aaa);
%>
<table border=2>
  <tr>
    <td>����</td>
    <td>����</td>
    <td>���</td>
  </tr>
  
  <tr>
    <td>User-Agent</td>
    <td>${'${'}      header["User-Agent"]}
</td>
    <td>${header["User-Agent"]}    </td>
  </tr>
  <tr>
    <td>Accept</td>
    <td>${'${'}      header.Accept}
</td>
    <td>${header.Accept}    </td>
  </tr> 
<tr>
    <td>Cookie</td>
    <td>${'${'}      cookie.userID}
</td>
    <td>${cookie.userID}    </td>
  </tr> 
<tr>
    <td>initParam</td>
    <td>${'${'}      initParam.userid}
</td>
    <td>${initParam.userid}    </td>
  </tr> 
<tr>
    <td>initParam</td>
    <td>initParam.userid�ĵȼ۷�ʽ
</td>
    <td><%=getServletContext().getInitParameter("userid") %>   </td>
  </tr>
<tr>
    <td>initParam</td>
    <td>initParam.userid����һ�ȼ۷�ʽ
</td>
    <td><%=application.getInitParameter("userid") %>   </td>
  </tr>  
</table>
</body>
</html>
