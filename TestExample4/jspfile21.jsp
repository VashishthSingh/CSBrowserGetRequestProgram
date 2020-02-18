<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.json.JSONObject,org.json.JSONObject,org.json.JSONArray"%>
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

	<table>
	  <tr>
	    <th>readDateTime</th>
	    <th>ramUsed</th>
	    <th>diskUsed</th>
	    <th>cpuUsed</th>
	  </tr>
	  <%
		try{
			JSONObject jsonobject=(JSONObject)request.getAttribute("jsonData");
			out.println(jsonobject);
			int len=jsonobject.length();
			JSONArray array;
			int lenOfJsonArray,i,j;
			Object value;
	        for(i=0;i<len;i++){
				array=jsonobject.getJSONArray(i+"");
				lenOfJsonArray=array.length();
	  %>
	           <tr>
	  <%         for(j=0;j<lenOfJsonArray;j++){
					value=array.get(j);  
	  %>
					<td><%=value%></td>
	  <%         }
	  %>
				</tr>
	  <%	} 
		}
		catch(Exception e){
			out.println(e);
		}
      %>
      
	</table>
	
</body>
</html>