<%-- <%page language"java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 --%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="header.jsp"></jsp:include>


<jsp:include page="header2.jsp"></jsp:include>

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
</head>
<body >
<p>Your Password is:</p>
<c:forEach items:${list} var="customer">
<p>${customer.password}</p>
</c:forEach>


 <footer> <jsp:include page="footer.jsp"></jsp:include></footer> 

</body>
</html>