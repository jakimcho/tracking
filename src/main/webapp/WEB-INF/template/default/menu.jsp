<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="menu">
Menu
    <ul>
        <li>
            <spring:url value="/home" var="homeUrl" htmlEscape="true"/>
            <a href="${homeUrl}">Home</a>
        </li>
          <li>
            <spring:url value="/persons/persons" var="personUrl" htmlEscape="true"/>
            <a href="${personUrl}">List Persons</a>
        </li>
          <li>
            <spring:url value="/persons/personForm" var="personFormtUrl" htmlEscape="true"/>
            <a href="${personFormtUrl}">Add Person</a>
        </li>
        <li>
            <spring:url value="/about" var="aboutUrl" htmlEscape="true"/>
            <a href="${aboutUrl}">About</a>
        </li>
    </ul>
</div>