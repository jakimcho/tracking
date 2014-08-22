<%@include file="/WEB-INF/template/default/tagLib.jsp" %>

<tiles:insertDefinition name="users">
	<tiles:putAttribute name="body">
		<table class="table table-bordered table-hover table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Users</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.id}</td>
						<spring:url value="/users/${user.id}" var="userDetailsUrl" />
						<td><a href="${userDetailsUrl}">${user.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</tiles:putAttribute>
</tiles:insertDefinition>