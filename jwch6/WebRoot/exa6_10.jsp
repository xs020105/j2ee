<%@page contentType="text/html; charset=GBK"%>

<html>
<head>
<title>JSP EL隐式对象</title>
</head>
<body>
<h2>JSP EL的隐式对象</h2>
<% Cookie aaa=new Cookie("userID","wangwu");
   response.addCookie(aaa);
%>
<table border=2>
  <tr>
    <td>概念</td>
    <td>代码</td>
    <td>输出</td>
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
    <td>initParam.userid的等价方式
</td>
    <td><%=getServletContext().getInitParameter("userid") %>   </td>
  </tr>
<tr>
    <td>initParam</td>
    <td>initParam.userid的另一等价方式
</td>
    <td><%=application.getInitParameter("userid") %>   </td>
  </tr>  
</table>
</body>
</html>
