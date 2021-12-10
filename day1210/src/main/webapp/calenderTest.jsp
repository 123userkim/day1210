<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
	table,td{
		border: 1px solid black;		
	}
	table{
		border-collapse: collapse;
		width: 60%;
	}
	.title{
		background-color: black;
		color: white;
	}
</style>
</head>
<body>


<%
	int []lastDate = {31,28,31,30,31,30,31,31,30,31,30,31};
	String []days = {"일","월","화","수","목","금","토"};
	Date today = new Date();
	int year =today.getYear();
	int month =today.getMonth();
	
	//다음 달을 눌러서 월이 올 때
	if(request.getParameter("month")!=null){
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		if(month == 12){
			year++;
			month = 0;
		}
	}
	
	
	Date startDate = new Date(year,month,1);
	int startDay = startDate.getDay();
%>

	<h2><%=year+1900 %>년 <%=month+1%>월</h2>
	<table> 
	
	<tr>
		 <%
		//days 배열의 요소만큼 td를 동적으로 만들기
		  for(String day :days){
			//days 배열의 요소만큼 td를 동적으로 만들기
			 
			 %>
			 <td class="title"><%=day%></td>
			<% 
		 }
		 %>
	</tr>
		
		
		
		
	<tr>
		<%
		for(int i=1;i<=startDay;i++){
			%>
			<td>&nbsp;</td>
			<%
		}
		
		
		for(int i =1; i<=lastDate[month]; i++){					
				%>					
				<td><%=i%></td>
				<%
				
				if((i+startDay)%7==0){					 
					%>
					</tr><tr>
					<%
				}
			}			
		%>
	</tr>
	
	</table>
	<hr>
	<a href="calenderTest.jsp?year=<%=year%>&month=<%=month+1%>">다음달</a>
</body>
</html>