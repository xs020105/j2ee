<%@ page contentType="text/html;charset=GB2312" %> 
<HTML> 
<BODY>
 <jsp:useBean id="cir" class="bit.jw.Circle" scope="application" >
   </jsp:useBean>
<P>Բ�ĳ�ʼ�뾶�ǣ�
   <%=cir.getRadius()%>
   <%cir.setRadius(1000);%>
<P>�޸ĺ��Բ�İ뾶�ǣ�
   <%=cir.getRadius()%>
</BODY>
</HTML>