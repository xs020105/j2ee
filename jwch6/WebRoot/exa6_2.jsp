<%@ page language="java" pageEncoding="GB18030"%>
<%@ page isELIgnored="true" %>
<html>
<body>
<H1>逻辑EL</H1>
<table border=2>
	    <tr>
                <td>运算</td>
                <td>EL表达式</td>
                <td>结果</td>
            </tr>
            <tr>
              <td>与</td>
                <td>${'${'}true and true}</td>
                <td>${true and true}</td>
            </tr>
            <tr>
                <td>与</td>
                <td>${'${'}true && false}</td>
                <td>${true && false}</td>
            </tr>
	    <tr>
              <td>或</td>
                <td>${'${'}true or true}</td>
                <td>${true or true}</td>
            </tr>
            <tr>
                <td>或</td>
                <td>${'${'}true || false}</td>
                <td>${true || false}</td>
            </tr>
            <tr>
                <td>非</td>
                <td>${'${'}not true}</td>
                <td>${not true}</td>
            </tr>
            <tr>
                <td>非</td>
                <td>${'${'}'!false}</td>
                <td>${!false}</td>
            </tr>
        </table>
    </body>
</html>