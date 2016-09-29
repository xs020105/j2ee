<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.io.*"%>
<html>
	<body bgcolor=cyan>
		<font size=4> 
<%!int number = 0;

	synchronized void countpeople() {
		if (number == 0) //有两种可能性
		{
			try //可能是今天刚打开服务器
			{
				FileInputStream in = new FileInputStream("count.txt");
				DataInputStream dataIn = new DataInputStream(in);
				number = dataIn.readInt();
				number++;
				in.close();
				dataIn.close();
			} catch (FileNotFoundException e) //也可能是第一次开放本站点
			{
				number++;
				try {
					FileOutputStream out = new FileOutputStream("count.txt");
					DataOutputStream outw = new DataOutputStream(out);
					outw.writeInt(number);
					out.close();
					outw.close();
				} catch (IOException ee) {
				}
			} catch (IOException ee) {
			}
		} else //在服务器工作过程中
		{
			number++;
			try {
				FileOutputStream out = new FileOutputStream("count.txt");
				DataOutputStream outw = new DataOutputStream(out);
				outw.writeInt(number);
				out.close();
				outw.close();
			} catch (FileNotFoundException e) {
			} catch (IOException e) {
			}
		}
	}%> 
	<%
       countpeople();
    %>
			<p>
				您是第<%=number%>为访问本站点的客户
	</body>
</html>

