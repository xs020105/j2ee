<%@ page contentType="text/html;charset=GB2312" %>

<HTML>
	<BODY >
	<Font size=4>
		<FORM action="" Method="post" >
		<P>���빤�˵�����: 
		<Input type=text name="name">
		<P>���빤�˵Ĺ���: 
		 <Input type=text name="number">
		<P>���빤�˵����: 
		 <Input type=text name="height">
		<P>���빤�˵�����: 
		<Input type=text name="weight">
		<Input type=submit value="�ύ">
		</FORM>
		
		<jsp:useBean id="zhang" class="bit.jw.Worker" scope="page" >
		</jsp:useBean>
		<jsp:setProperty  name= "zhang"  property="*"  />
		
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="name"  />
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="number"  />
		<P>����ǣ�
		<jsp:getProperty  name= "zhang"  property="height"  />
		��
		<P>�����ǣ�
		<jsp:getProperty  name= "zhang"  property="weight"  />
		����
	</FONT>
	</BODY> 
</HTML>
