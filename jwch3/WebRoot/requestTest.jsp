<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>测试request主要方法</title>
</head>
<body>
   <h4 align=center ><font color="#FF0000">测试request主要方法</font></h4><hr>
   <br><B>客户端使用协议为:</B>
   <% String protocol=request.getProtocol();
      out.println(protocol);
   %>
<br><B>获得接收客户端提交信息的页面：</B>
   <% String path=request.getServletPath();
      out.println(path);
   %>
<br><B>服务器名称：</B>
   <% String serverName=request.getServerName();
      out.println(serverName);
   %> 
<br><B>服务器端口号：</B>
   <% int serverPort=request.getServerPort();
      out.println(serverPort);
    %>         
<br><B>客户端的IP地址：</B>
   <% String  IP=request.getRemoteAddr();
      out.println(IP);
   %>
<br><B>客户端主机的名称：</B>
   <% String clientName=request.getRemoteHost();
      out.println(clientName);
   %>   
<br><B>接收客户端提交信息的长度：</B>
   <% int length=request.getContentLength();
      out.println(length);
   %>
<br><B>获得环境上下文路径：</B>
   <% String contextpath=request.getContextPath();
      out.println(contextpath);
   %>   

<br><B>获得请求中的字符编码方式：</B>
   <% String char_en=request.getCharacterEncoding();
      out.println(char_en);
   %>   
<br><B>客户提交信息的方式：</B>
   <% String method=request.getMethod();
      out.println(method);
   %>
<br><B>HTTP文件头中User-Agent的值：</B>
   <% String header_user=request.getHeader("User-Agent");
      out.println(header_user);
   %>
<br><B>HTTP文件头中accept的值：</B>
   <% String header_accept=request.getHeader("accept");
      out.println(header_accept);
   %>
<br><B>HTTP文件头中Host的值：</B>
   <% String header_host=request.getHeader("Host");
      out.println(header_host);
   %>
<br><B>HTTP文件头中accept-encoding的值：</B>
   <% String header_en=request.getHeader("accept-encoding");
      out.println(header_en);
   %>
</body>
</html>
