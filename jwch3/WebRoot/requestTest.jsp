<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>����request��Ҫ����</title>
</head>
<body>
   <h4 align=center ><font color="#FF0000">����request��Ҫ����</font></h4><hr>
   <br><B>�ͻ���ʹ��Э��Ϊ:</B>
   <% String protocol=request.getProtocol();
      out.println(protocol);
   %>
<br><B>��ý��տͻ����ύ��Ϣ��ҳ�棺</B>
   <% String path=request.getServletPath();
      out.println(path);
   %>
<br><B>���������ƣ�</B>
   <% String serverName=request.getServerName();
      out.println(serverName);
   %> 
<br><B>�������˿ںţ�</B>
   <% int serverPort=request.getServerPort();
      out.println(serverPort);
    %>         
<br><B>�ͻ��˵�IP��ַ��</B>
   <% String  IP=request.getRemoteAddr();
      out.println(IP);
   %>
<br><B>�ͻ������������ƣ�</B>
   <% String clientName=request.getRemoteHost();
      out.println(clientName);
   %>   
<br><B>���տͻ����ύ��Ϣ�ĳ��ȣ�</B>
   <% int length=request.getContentLength();
      out.println(length);
   %>
<br><B>��û���������·����</B>
   <% String contextpath=request.getContextPath();
      out.println(contextpath);
   %>   

<br><B>��������е��ַ����뷽ʽ��</B>
   <% String char_en=request.getCharacterEncoding();
      out.println(char_en);
   %>   
<br><B>�ͻ��ύ��Ϣ�ķ�ʽ��</B>
   <% String method=request.getMethod();
      out.println(method);
   %>
<br><B>HTTP�ļ�ͷ��User-Agent��ֵ��</B>
   <% String header_user=request.getHeader("User-Agent");
      out.println(header_user);
   %>
<br><B>HTTP�ļ�ͷ��accept��ֵ��</B>
   <% String header_accept=request.getHeader("accept");
      out.println(header_accept);
   %>
<br><B>HTTP�ļ�ͷ��Host��ֵ��</B>
   <% String header_host=request.getHeader("Host");
      out.println(header_host);
   %>
<br><B>HTTP�ļ�ͷ��accept-encoding��ֵ��</B>
   <% String header_en=request.getHeader("accept-encoding");
      out.println(header_en);
   %>
</body>
</html>
