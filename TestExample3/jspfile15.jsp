<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.json.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table{border:2px solid gray;text-align:center;}
		tr{border:1px solid silver;padding:3px;}
		th{border:1px solid silver;padding:3px;}
		td{border:1px solid silver;padding:3px;}
	</style>
</head>
<body>

	<%
		Object response1=request.getAttribute("jsonData");
		JSONObject myresponse=new JSONObject(response1.toString());
    	int lengthOfJsonObject=myresponse.names().length();
    	out.println(response1);
    %>
	<br><br><br>
    <table>
    	<tr>
    		<th>readDateTime</th>
    		<th>ramUsed</th>
    		<th>diskUsed</th>
    		<th>cpuUsed</th>
    	</tr>
         <% for(int i=0;i<lengthOfJsonObject;i++){
	     	 JSONObject myresponse1=new JSONObject(myresponse.getJSONObject(i+"").toString());
	     	 double ramUti=myresponse1.getDouble("ramUsed");
	     	 double diskUti=myresponse1.getDouble("diskUsed");
	     	 double cpuUti=myresponse1.getDouble("cpuUtilization");
	     	 String readDateAndTime=myresponse1.getString("readDateTime");
	     %>   
	     <tr>	 
	 	  <td><%=readDateAndTime%></td>
	 	  <td><%=ramUti%></td>
	 	  <td><%=diskUti%></td>
	 	  <td><%=cpuUti%></td>
	     </tr> 
	    <% }%> 
	 </table>
	
</body>
</html>