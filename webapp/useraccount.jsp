<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Working Days and Hours</title>
<style>
body {
    background: url('http://i.imgur.com/Eor57Ae.jpg');
    background-size: cover;
    font-family: Montserrat;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 90%;
  border-style: groove;
  border-color: #FFFFFF;
  padding:0px;
  background-color: #C0C0C0;
  margin-left: auto;
  margin-right: auto;
}
th{
	width:1%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.td1{
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
td{
	/*width:4%;*/
	border: 1px solid #404040;
	text-align: center;
	padding: 1px;
}
.update{
  cursor: pointer;
  font-size: 14px;
  display: block;
  width: 85%;
  height: 85%;
  padding: 4px 2px;
  background: none;
  background-image: none;
  border: 3px solid #00CC00;
  color: #ffffff;
  border-radius: 2px;
  transition: border-color .25s ease, box-shadow .25s ease;
}
.delete{
  cursor: pointer;
  font-size: 14px;
  display: block;
  width: 85%;
  height: 85%;
  padding: 4px 2px;
  background: none;
  background-image: none;
  border: 3px solid #FF0000;
  color: #ffffff;
  border-radius: 2px;
  transition: border-color .25s ease, box-shadow .25s ease;
}
tr{
  height:40px;
  border: 3px solid #404040;
}
</style>

</head>
<body>
<table class="table table-bordered" border=2px>
							<thead>
								<tr>
									<th>ID</th>
									<th>UserName</th>
									<th>Password</th>
									<th>No Of Working Days</th>
									<th>Weekdays</th>
									<th>Weekend days</th>
									<th>Hours</th>
									<th>Minutes</th>
								</tr>
							</thead>

							<tbody>
						<c:forEach var="lec" items="${lecDetails}">
														${lec.id}
														${lec.username}
														${lec.password}
														${lec.noOf_WorkingDays}
														${lec.weekDays}
														${lec.weekEnd}
														${lec.hours}
														${lec.min}

							<tr>
									<td>
                                        ${lec.id}
                                    </td>
                                    <td>
                                        ${lec.username}
                                    </td>
                                    <td>
                                        ${lec.password}
                                    </td>
                                    <td>
                                        ${lec.noOf_WorkingDays}
                                    </td>
                                    <td>
                                        ${lec.weekDays}
                                    </td>
                                    <td>
                                        ${lec.weekEnd}
                                    </td>
                                    <td>
                                        ${lec.hours}
                                    </td>
                                    <td>
                                        ${lec.min}
                                    </td>
                                    
									<td class="td1">
                                        <c:url  value="update.jsp" var ="lecupdate">
											<c:param name="id" value ="${id}"/>
											<c:param name="username" value ="${username}"/>
											<c:param name="password" value ="${password}"/>
											<c:param name="noOf_WorkingDays" value ="${noOf_WorkingDays}"/>
											<c:param name="weekDays" value ="${weekDays}"/>
											<c:param name="weekEnd" value ="${weekEnd}"/>
											<c:param name="hours" value ="${hours}"/>
											<c:param name="min" value ="${min}"/>
										</c:url>
 
                                            <a href ="${lecupdate}"><input class="update" type="submit" name ="submit" value="Update"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                              
                                        <c:url value="Delete.jsp" var ="lecdelete">
												<c:param name="id" value ="${id}"/>
											<c:param name="username" value ="${username}"/>
											<c:param name="password" value ="${password}"/>
											<c:param name="noOf_WorkingDays" value ="${noOf_WorkingDays}"/>
											<c:param name="weekDays" value ="${weekDays}"/>
											<c:param name="weekEnd" value ="${weekEnd}"/>
											<c:param name="hours" value ="${hours}"/>
											<c:param name="min" value ="${min}"/>
										</c:url>
 
                                            <a href ="${lecdelete}"><input class="delete" type="submit" name ="submit" value="DELETE"></a>
  </td>
								</tr>
                              </c:forEach>
						</tbody>
				</table>
</body>
</html>