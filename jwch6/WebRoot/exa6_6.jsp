<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<html>
	<head>
	<title>operator</title>
	</head>
	<body>运算符
	<table border="1">
	  <tr>
	    <td>
	      <b>概念</b>
	    </td>
	    <td>
	      <b>EL条件</b>
	    </td>
	    <td>
	      <b>结果</b>
	    </td>
	  </tr>
	  <tr>
	    <td>Numeric less than</td>
	    <td>${'${'}      1
	      &lt;
	      2}
	</td>
	    <td>${1 < 2}    </td>
	  </tr>
	  <tr>
	    <td>Numeric greater than</td>
	    <td>${'${'}      1
	      &gt;
	      2}
	</td>
	    <td>${1 > 2}    </td>
	  </tr>
	  <tr>
	    <td>Numeric less than</td>
	    <td>${'${'}      1 lt 2}
	</td>
	    <td>${1 lt 2}    </td>
	  </tr>
	  <tr>
	    <td>Numeric greater than</td>
	    <td>${'${'}      1 gt 2}
	</td>
	    <td>${1 gt 2}    </td>
	  </tr>
	  <tr>
	    <td>Numeric Greater than or equal</td>
	    <td>${'${'}      1
	      &gt;
	      = 1}
	</td>
	    <td>${1 >= 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric Less than or equal</td>
	    <td>${'${'}      1
	      &lt;
	      = 1}
	</td>
	    <td>${1 <= 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric less than or equal</td>
	    <td>${'${'}      1 le 1}
	</td>
	    <td>${1 le 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric greater than or equal</td>
	    <td>${'${'}      1 ge 1}
	</td>
	    <td>${1 ge 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric equal to</td>
	    <td>${'${'}      1 == 1}
	</td>
	    <td>${1 == 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric equal to</td>
	    <td>${'${'}      1 eq 1}
	</td>
	    <td>${1 eq 1}    </td>
	  </tr>
	  <tr>
	    <td>Numeric not equal to</td>
	    <td>${'${'}      1 ne 2}
	</td>
	    <td>${1 ne 2}    </td>
	  </tr>
	  <tr>
	    <td>Alphabetic greater than</td>
	    <td>${'${'}      'abe'
	      &gt;
	      'ade'}
	</td>
	    <td>${'abe' > 'ade'}    </td>
	  </tr>
	  <tr>
	    <td>Alphabetic equal to</td>
	    <td>${'${'}      'abe' eq 'abe'}
	</td>
	    <td>${'abe' eq 'abe'}    </td>
	  </tr>
	  <tr>
	    <td>Alphabetic not equal to</td>
	    <td>${'${'}      'abe' ne 'ade'}
	</td>
	    <td>${'abe' ne 'ade'}    </td>
	    
	  </tr>
	<tr>
	    <td>div</td>
	    <td>${'${'}      100 div 20}
	</td>
	    <td>${100 div 20}    </td>
	    
	  </tr>
	</table>
	empty 运算符
	<br/>
	<b>  ${'${'}empty ""}
	${empty ""}  <br/>
	  ${'${'}empty "sometext"}
	${empty "sometext"}  <br/>
	</b>
	</body>
</html>
