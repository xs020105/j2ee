<%@ page contentType="text/html;charset=GB2312" %>

<HTML>
	<BODY>
	<Font size=4>
	   <jsp:useBean id="zhang" class="bit.jw.Worker" scope="page" >
	   </jsp:useBean>
	   
		<jsp:setProperty  name= "zhang"  property="name" value="zhangsan"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="name"  />
		
		<jsp:setProperty  name= "zhang"  property="number" value="1999001"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="number"  />
		
		<% double height=1.70;
		%>
		<jsp:setProperty  name= "zhang"  property="height" value="<%=height+0.05%>"  />
		<P>����ǣ�
		<jsp:getProperty  name= "zhang"  property="height"  />
		��
		
		<jsp:setProperty  name= "zhang"  property="weight" value="67.65"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="weight"  />
		����
	</FONT>
	</BODY>
</HTML>