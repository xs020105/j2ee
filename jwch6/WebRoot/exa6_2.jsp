<%@ page language="java" pageEncoding="GB18030"%>
<%@ page isELIgnored="true" %>
<html>
<body>
<H1>�߼�EL</H1>
<table border=2>
	    <tr>
                <td>����</td>
                <td>EL���ʽ</td>
                <td>���</td>
            </tr>
            <tr>
              <td>��</td>
                <td>${'${'}true and true}</td>
                <td>${true and true}</td>
            </tr>
            <tr>
                <td>��</td>
                <td>${'${'}true && false}</td>
                <td>${true && false}</td>
            </tr>
	    <tr>
              <td>��</td>
                <td>${'${'}true or true}</td>
                <td>${true or true}</td>
            </tr>
            <tr>
                <td>��</td>
                <td>${'${'}true || false}</td>
                <td>${true || false}</td>
            </tr>
            <tr>
                <td>��</td>
                <td>${'${'}not true}</td>
                <td>${not true}</td>
            </tr>
            <tr>
                <td>��</td>
                <td>${'${'}'!false}</td>
                <td>${!false}</td>
            </tr>
        </table>
    </body>
</html>