<%@ page contentType="text/html;charset=gb2312"%>
<HTML>
<body>
<% String sid=session.getId();
   String str=response.encodeURL("id1_1.jsp");
%>
<p>在id3_1中的id号为：<%=sid%>

<p>单击超连接，可到id1_1页面
<a href="<%=str%>">
<br>欢迎到id1_1页面来。
</a>
</body>
</html>