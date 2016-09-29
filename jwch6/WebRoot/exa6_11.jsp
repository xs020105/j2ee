<%@ page contentType="text/html;charset=gbk" %>

<html>
	<head>
	  <title>pageContext</title>
	</head>
	<body>
		
		<h2>ELÖÐpageContext</h2>
		
		\${pageContext.request.queryString}¡G${pageContext.request.queryString}</br>
		\${pageContext.request.requestURL}¡G${pageContext.request.requestURL}</br>
		\${pageContext.request.contextPath}¡G${pageContext.request.contextPath}</br>
		\${pageContext.request.method}¡G${pageContext.request.method}</br>
		\${pageContext.request.protocol}¡G${pageContext.request.protocol}</br>
		\${pageContext.request.remoteUser}¡G${pageContext.request.remoteUser}</br>
		\${pageContext.request.remoteAddr }¡G${pageContext.request.remoteAddr}</br>
		\${pageContext.session.new}¡G${pageContext.session.new}</br>
		\${pageContext.session.id}¡G${pageContext.session.id}</br>
		
	</body>
</html>
