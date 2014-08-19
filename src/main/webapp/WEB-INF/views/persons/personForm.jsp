<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	
		<h1>Add New</h1>
		<form method="post" action="addPerson">
			Name: <input type="text" name="name" /> <input type="submit">
		</form>
		
	</tiles:putAttribute>
</tiles:insertDefinition>