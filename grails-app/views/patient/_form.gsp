<%@ page import="uk.ac.shu.webarch.MySurgery.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'appointments', 'error')} ">
	<label for="appointments">
		<g:message code="patient.appointments.label" default="Appointments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.appointments?}" var="a">
    <li><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="appointment" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'appointment.label', default: 'Appointment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'patientFName', 'error')} ">
	<label for="patientFName">
		<g:message code="patient.patientFName.label" default="Patient FN ame" />
		
	</label>
	<g:textField name="patientFName" value="${patientInstance?.patientFName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'patientID', 'error')} ">
	<label for="patientID">
		<g:message code="patient.patientID.label" default="Patient ID" />
		
	</label>
	<g:textField name="patientID" value="${patientInstance?.patientID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'patientSName', 'error')} ">
	<label for="patientSName">
		<g:message code="patient.patientSName.label" default="Patient SN ame" />
		
	</label>
	<g:textField name="patientSName" value="${patientInstance?.patientSName}"/>
</div>

