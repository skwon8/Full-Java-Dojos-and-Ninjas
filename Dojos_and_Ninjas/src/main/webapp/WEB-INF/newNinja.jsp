<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Create New Ninja</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<form:form method = "POST" action = "/ninja/createNinja" modelAttribute = "ninja">
        <p>
            <form:label path = "dojo">Name:</form:label>
            <form:errors path = "dojo" />
            <form:select path = "dojo">
                <c:forEach items = "${allDojos}" var = "dojo">
                    <option value = "${dojo.id}">${dojo.name}</option>
                </c:forEach>
            </form:select>
        </p>

        <p>
            <form:label path = "firstName">First Name:</form:label>
            <form:errors path = "firstName" />
            <form:input path = "firstName" />
        </p>

        <p>
            <form:label path = "lastName">Last Name:</form:label>
            <form:errors path = "lastName" />
            <form:input path = "lastName" />
        </p>

        <p>
            <form:label path = "age">Age:</form:label>
            <form:errors path = "age" />
            <form:input path = "age" />
        </p>

        <button>Create Ninja</button>
	</form>
</body>
</html>