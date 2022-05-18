<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Sessions and Available Times</title>
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
									<th>Lecturer</th>
									<th>Time</th>
									<th>Group</th>
									<th>Sub Group</th>
									<th>Session ID</th>
									
							</thead>

							<tbody>
						<c:forEach var="lec" items="${lecDetails}">
														${lec.id}
														${lec.time}
														${lec.group}
														${lec.subGroup}
														${lec.sessionID}
														

							<tr>
									<td>
                                        ${lec.id}
                                    </td>
                                    <td>
                                        ${lec.time}
                                    </td>
                                    <td>
                                        ${lec.group}
                                    </td>
                                    <td>
                                        ${lec.subGroup}
                                    </td>
                                    <td>
                                        ${lec.sessionID}
                                    </td>

                                    
									<td class="td1">
                                        <c:url  value="update.jsp" var ="lecupdate">
											<c:param name="id" value ="${id}"/>
											<c:param name="time" value ="${time}"/>
											<c:param name="group" value ="${group}"/>
											<c:param name="subGroup" value ="${subGroup}"/>
											<c:param name="sessionID" value ="${sessionID}"/>

										</c:url>
 
                                            <a href ="${lecupdate}"><input class="update" type="submit" name ="submit" value="Update"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                              
                                        <c:url value="Delete.jsp" var ="lecdelete">
										    <c:param name="id" value ="${id}"/>
											<c:param name="time" value ="${time}"/>
											<c:param name="group" value ="${group}"/>
											<c:param name="subGroup" value ="${subGroup}"/>
											<c:param name="sessionID" value ="${sessionID}"/>

										</c:url>
 
                                            <a href ="${lecdelete}"><input class="delete" type="submit" name ="submit" value="DELETE"></a>
  </td>
								</tr>
                              </c:forEach>
						</tbody>
				</table>
</body>
</html>