<%@ page contentType="text/html;charset=gb2312"%>
<HTML>
<body>
<% String sid=session.getId();
   String str=response.encodeURL("id1_1.jsp");
%>
<p>��id3_1�е�id��Ϊ��<%=sid%>

<p>���������ӣ��ɵ�id1_1ҳ��
<a href="<%=str%>">
<br>��ӭ��id1_1ҳ������
</a>
</body>
</html>