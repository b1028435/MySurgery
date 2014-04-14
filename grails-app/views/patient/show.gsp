
<%@ page import="uk.ac.shu.webarch.MySurgery.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.appointments}">
				<li class="fieldcontain">
					<span id="appointments-label" class="property-label"><g:message code="patient.appointments.label" default="Appointments" /></span>
					
						<g:each in="${patientInstance.appointments}" var="a">
						<span class="property-value" aria-labelledby="appointments-label"><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientFName}">
				<li class="fieldcontain">
					<span id="patientFName-label" class="property-label"><g:message code="patient.patientFName.label" default="Patient FN ame" /></span>
					
						<span class="property-value" aria-labelledby="patientFName-label"><g:fieldValue bean="${patientInstance}" field="patientFName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientID}">
				<li class="fieldcontain">
					<span id="patientID-label" class="property-label"><g:message code="patient.patientID.label" default="Patient ID" /></span>
					
						<span class="property-value" aria-labelledby="patientID-label"><g:fieldValue bean="${patientInstance}" field="patientID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientSName}">
				<li class="fieldcontain">
					<span id="patientSName-label" class="property-label"><g:message code="patient.patientSName.label" default="Patient SN ame" /></span>
					
						<span class="property-value" aria-labelledby="patientSName-label"><g:fieldValue bean="${patientInstance}" field="patientSName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
