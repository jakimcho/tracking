<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<tiles:insertDefinition name="user-detail">
	<tiles:putAttribute name="body">
		<h1>${user.name}</h1>
	</tiles:putAttribute>
</tiles:insertDefinition>