<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

<!-- exercicio 1 -->



 			Primeira página JSP
 			<%! boolean formatar = true; %>
 			<%!
 				String today(){
 					java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
 					return dt.format(new java.util.Date());
 			}
 		%>
 		
 		<h1>A data de hoje é: <%=new java.util.Date() %> </h1>
 		<h1>A data de hoje é: <%= today() %> </h1>
 		<h1>A data de hoje é: <% if (formatar){
 									out.println(today());
 		}else{
 			out.println(new java.util.Date());
 		}%> </h1>
 		
 	
 	




<!-- exercicio 2 -->
 		
 		<%
ArrayList nomes = new ArrayList(); 

nomes.add("washington");
nomes.add("jefferson");
nomes.add("caroline");
nomes.add("alex");

%>
<%     
out.println(nomes);
%>


<%! String nome = "gava";
    String nome1 = "Rapha"; %> 


<% nomes.add (nome);
nomes.add (nome1); %>

<%     
out.println(nomes);
%>



 <%! Calendar cal = Calendar.getInstance(); %> 
 
 <%! Integer segundos(){
 	
 	return cal.get(Calendar.SECOND); 
 }
 %>
 
 
 <h1> <%
 	if (segundos()%2 == 0){
 		out.println(" Segundo par");
 	}else{
 		out.println(" Segundo impar");
 	}
 %> </h1>

 
<h2> <%=
	segundos() 	
 %> </h2>




</body>
</html>