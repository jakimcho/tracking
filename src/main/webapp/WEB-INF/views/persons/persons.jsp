<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


		<body>
			<h1>All Persons</h1>
			
			<table border="1px">
				<thead>
					<tr>
						<th  width="50px">Id</th>
						<th width="100px">Name</th>
						<th width="100px">Sir Name</th>
						<th width="100px">Birth Date</th>
						<th width="100px">Phone</th>
					</tr>
				</thead>
				<c:forEach var="p" items="${persons}">
				<tr>
		   			<td class="idColumn">${p.id}</td>
		   			<td class="nameColumn">${p.name}</td>
		   			<td class="idColumn">${p.sirName}</td>
		   			<td class="nameColumn">${p.birthDate}</td>
		   			<td class="idColumn">${p.phone}</td>
	   			</tr>
				</c:forEach>
			</table>
		</body>

	</tiles:putAttribute>
</tiles:insertDefinition>