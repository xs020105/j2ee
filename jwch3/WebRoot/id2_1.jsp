<%@ page contentType="text/html;charset=gb2312"%>
<HTML>
<body>
<% String sid=session.getId();
   String str=response.encodeURL("id3_1.jsp");
%>
<p>��id2_1�е�id��Ϊ��<%=sid%>

<p>���������ӣ��ɵ�id3_1ҳ��
<a href="<%=str%>">
<br>��ӭ��id3_1ҳ������
</a>
</body>
</html>