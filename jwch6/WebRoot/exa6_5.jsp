<%@ page language="java" pageEncoding="GB18030"%>

<html>
    <head>
        <title>EL 中的符号常量</title>
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
        <h1>EL 中的符号常量的用法</h1>
        <Font color="${pageScope.foregr}"
        size="${pageScope.size}">
            背景色和文本颜色已修改
        </Font><br/>
    </body>
</html>