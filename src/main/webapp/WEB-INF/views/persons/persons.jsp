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
						<th width="150px">Name</th>
					</tr>
				</thead>
				<c:forEach var="p" items="${persons}">
				<tr>
		   			<td class="idColumn">${p.id}</td>
		   			<td class="nameColumn">${p.name}</td>
	   			</tr>
				</c:forEach>
			</table>
		</body>

	</tiles:putAttribute>
</tiles:insertDefinition>