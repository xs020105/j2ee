<%@ page language="java" pageEncoding="GB18030"%>

<html>
    <head>
        <title>EL �еķ��ų���</title>
    </head>
    <%
        String color="#66FFFF";
        String size="12";
        String textclr="Blue";  //Yellow  Blue
        String foregr="Red";
        
        pageContext.setAttribute("color",color);
        pageContext.setAttribute("size",size);
        pageContext.setAttribute("textclr",textclr);
        pageContext.setAttribute("foregr",foregr);
    %>
    <body bgcolor='${pageScope.color}'
    text="${pageScope.textclr}">
        <h1>EL �еķ��ų������÷�</h1>
        <Font color="${pageScope.foregr}"
        size="${pageScope.size}">
            ����ɫ���ı���ɫ���޸�
        </Font><br/>
    </body>
</html>