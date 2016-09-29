
<%@ page contentType="text/html;charset=gb2312"%>
<html>
	<head><title>表单</title><head>
<body>
	<form method="POST" action="request_get.jsp">
		<p align="center"><h2>用户注册</h2>
		
		用户名：<input type="text" name="User" size="20">&nbsp;&nbsp;&nbsp;&nbsp;   
		密码：<input type="password" name="pwd" size="20"><br> <br>
		<p>你喜欢：
		<input type="checkbox" name="sports" value="足球"> 足球 
		<input type="checkbox" name="sports" value="篮球"> 篮球 &nbsp;&nbsp;&nbsp;&nbsp;
		性别：
		<input type="radio" name="sexy" value=male> 男 
		<input type="radio" name="sexy" value=female> 女 <br><br><p>你的计算机</p>
		<textarea NAME=“Computer” ROWS=6  COLS=64>
			CPU  PIV 1500
			Memory 512M
		 </textarea><br><br>
		<p>
		你所在地：
		<select  name="area" style="width"50"  size="1">
			<option value="北京"  selected > 北京 </option>
			<option value="天津" > 天津 </option>
			<option value="上海" > 上海 </option>
			<option value="重庆" > 重庆 </option>
		</select> 
		<br> <br>
		 <input type="submit" value=" 提交">   
		 <input type="reset" value="全部重写"></p>   
	</form>
</body>
</html>
