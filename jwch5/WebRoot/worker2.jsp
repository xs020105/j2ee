<%@ page contentType="text/html;charset=GB2312" %> 

<HTML>
	<BODY><Font size=4>
	
		<FORM action="" Method="post" >
		<P>输入工人的姓名: 
		<Input type=text name="name">
		<P>输入工人的工号: 
		<Input type=text name="number">
		<P>输入工人的身高: 
		<Input type=text name="height">
		<P>输入工人的体重: 
		<Input type=text name="weight">
		<BR> 
		<Input type=submit value="提交">
		</FORM>
		
		<jsp:useBean id="zhang" class="bit.jw.Worker" scope="page" >
		</jsp:useBean>
		
		<jsp:setProperty  name= "zhang"  property="name" param="name"  />
		<P>名字是：
		<jsp:getProperty  name= "zhang"  property="name"  />
		
		<jsp:setProperty  name= "zhang"  property="number" param="number"  />
		<P>工号是：
		<jsp:getProperty  name= "zhang"  property="number"  />
		
		<% double height=1.70;
		%>
		<jsp:setProperty  name= "zhang"  property="height" param="weight"  />
		<P>身高是：
		<jsp:getProperty  name= "zhang"  property="height"  />
		米
		
		<jsp:setProperty  name= "zhang"  property="weight" param="height"  />
		<P>体重是：
		<jsp:getProperty  name= "zhang"  property="weight"  />
		公斤
	</FONT>
	</BODY>
</HTML>