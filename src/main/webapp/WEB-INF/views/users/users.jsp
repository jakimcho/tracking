<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
						<td>${user.name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</tiles:putAttribute>
</tiles:insertDefinition>