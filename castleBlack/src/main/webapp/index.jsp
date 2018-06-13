<!--
JBoss, Home of Professional Open Source
Copyright 2016, Red Hat, Inc. and/or its affiliates, and individual
contributors by the @authors tag. See the copyright.txt in the
distribution for a full listing of individual contributors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>HOUSE STARK : Castle Black App</title>
    <link rel="icon" href="styles/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
<jsp:useBean id="controller" class="org.castleblack.app.ProfileController" scope="request"/>
<% controller.handleLogout(request); %>

<c:set var="isLoggedIn" value="<%=controller.isLoggedIn(request)%>"/>
<c:if test="${isLoggedIn}">
    <c:redirect url="profile.jsp"/>
</c:if>

<div class="wrapper" id="welcome">
    <div class="menu">
        <button onclick="location.href='profile.jsp'" type="button">Login</button>
    </div>

    <div class="content">
        <b>CASTLE BLACK APPLICATION</b>
        <div class="message">
            <img src="styles/icon.png" style="position: relative;" height="163px" width="180px"/>
            Please login if you respect the <b>King of the North</b>!
        </div>
    </div>
</div>
</body>
</html>