<%@ page contentType="text/html;charset=GB2312" %> 

<HTML>
	<BODY><Font size=4>
	
		<FORM action="" Method="post" >
		<P>���빤�˵�����: 
		<Input type=text name="name">
		<P>���빤�˵Ĺ���: 
		<Input type=text name="number">
		<P>���빤�˵����: 
		<Input type=text name="height">
		<P>���빤�˵�����: 
		<Input type=text name="weight">
		<BR> 
		<Input type=submit value="�ύ">
		</FORM>
		
		<jsp:useBean id="zhang" class="bit.jw.Worker" scope="page" >
		</jsp:useBean>
		
		<jsp:setProperty  name= "zhang"  property="name" param="name"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="name"  />
		
		<jsp:setProperty  name= "zhang"  property="number" param="number"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="number"  />
		
		<% double height=1.70;
		%>
		<jsp:setProperty  name= "zhang"  property="height" param="weight"  />
		<P>����ǣ�
		<jsp:getProperty  name= "zhang"  property="height"  />
		��
		
		<jsp:setProperty  name= "zhang"  property="weight" param="height"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="weight"  />
		����
	</FONT>
	</BODY>
</HTML>