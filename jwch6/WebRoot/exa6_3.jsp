<%@ page language="java" pageEncoding="GB18030"%>
<%@page isELIgnored="false" %>

<html>
    <head>
        <title>表达式示例</title>
    </head>
    <body bgcolor="#ffffff">
        <h1>
            启用/禁用表达式语言
        </h1>
        <form method="post" action="">
            <b>  ${'名字: '}
            <input type="text" value="${'请输入你的名字'}"/>  </b><br />
            <b>  ${'姓氏: '}
            <input type="text" value="${'请输入您的姓氏'}"/>  </b><br />
            <hr />
            <input type="submit" name="Submit" value="${'提交表单'}">
            <input type="reset" value="${'重置表单'}">
        </form>
    </body>
</html>