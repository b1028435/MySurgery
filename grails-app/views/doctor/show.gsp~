
<%@ page import="uk.ac.shu.webarch.MySurgery.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctorInstance?.appointments}">
				<li class="fieldcontain">
					<span id="appointments-label" class="property-label"><g:message code="doctor.appointments.label" default="Appointments" /></span>
					
						<g:each in="${doctorInstance.appointments}" var="a">
						<span class="property-value" aria-labelledby="appointments-label"><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.doctorID}">
				<li class="fieldcontain">
					<span id="doctorID-label" class="property-label"><g:message code="doctor.doctorID.label" default="Doctor ID" /></span>
					
						<span class="property-value" aria-labelledby="doctorID-label"><g:fieldValue bean="${doctorInstance}" field="doctorID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.doctorName}">
				<li class="fieldcontain">
					<span id="doctorName-label" class="property-label"><g:message code="doctor.doctorName.label" default="Doctor Name" /></span>
					
						<span class="property-value" aria-labelledby="doctorName-label"><g:fieldValue bean="${doctorInstance}" field="doctorName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:doctorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${doctorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
