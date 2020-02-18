<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table{border:2px solid gray;text-align:center;}
		tr,th,td{border:1px solid darkgray;padding:3px;}
	</style>
</head>
<body>
<%-- 	 ${list}<br><br> --%>
	 <table>
	 	<tr>
	 		<th>readDateTime</th>
	 		<th>ramUsed</th>
	 		<th>diskUsed</th>
	 		<th>cpuUsed</th>
	 	</tr>
	  	<c:forEach var="map" items="${list}">
	  		<tr>
         		<c:forEach var="val" items="${map.values()}">
            		<td>${val}</td>
         		</c:forEach>
         	</tr>
      	</c:forEach>
     </table>
</body>
</html>