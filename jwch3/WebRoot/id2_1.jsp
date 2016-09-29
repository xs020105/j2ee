<%@ page contentType="text/html;charset=gb2312"%>
<HTML>
<body>
<% String sid=session.getId();
   String str=response.encodeURL("id3_1.jsp");
%>
<p>在id2_1中的id号为：<%=sid%>

<p>单击超连接，可到id3_1页面
<a href="<%=str%>">
<br>欢迎到id3_1页面来。
</a>
</body>
</html>