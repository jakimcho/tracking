<%@include file="/WEB-INF/template/default/tagLib.jsp" %>

<tiles:insertDefinition name="user-detail">
	<tiles:putAttribute name="body">
		<h1>${user.name}</h1>
		<c:forEach items="${user.blogs}" var="blog">
			<h3>Blog name: ${blog.name}</h3>
			<p>Blog URL: ${blog.url}</p>
			<table class="table table-bordered table-hover table-striped">
				<thead>
					<tr>
						<th>
							Item title
						</th>
						<th>
							Link
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${blog.items}" var="item">
						<tr>
							<td>
								${item.title}
							</td>
							<td>
								${item.link}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:forEach>
	</tiles:putAttribute>
</tiles:insertDefinition>