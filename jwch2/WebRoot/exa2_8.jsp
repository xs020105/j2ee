<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.io.*"%>
<html>
	<body bgcolor=cyan>
		<font size=4> 
<%!int number = 0;

	synchronized void countpeople() {
		if (number == 0) //�����ֿ�����
		{
			try //�����ǽ���մ򿪷�����
			{
				FileInputStream in = new FileInputStream("count.txt");
				DataInputStream dataIn = new DataInputStream(in);
				number = dataIn.readInt();
				number++;
				in.close();
				dataIn.close();
			} catch (FileNotFoundException e) //Ҳ�����ǵ�һ�ο��ű�վ��
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
		} else //�ڷ���������������
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
				���ǵ�<%=number%>Ϊ���ʱ�վ��Ŀͻ�
	</body>
</html>

