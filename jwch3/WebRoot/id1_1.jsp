<%@ page contentType="text/html;charset=gb2312"%>
<HTML>
<body>
<% String sid=session.getId();
   String str=response.encodeURL("id2_1.jsp");
%>
<p>��id1_1�е�id��Ϊ��<%=sid%>
<p>���������ӣ��ɵ�id2_1ҳ��
<a href="<%=str%>">
<br>��ӭ��id2_1ҳ������
</a>
</body>
</html>