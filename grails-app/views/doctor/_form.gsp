<%@ page import="uk.ac.shu.webarch.MySurgery.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'appointments', 'error')} ">
	<label for="appointments">
		<g:message code="doctor.appointments.label" default="Appointments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doctorInstance?.appointments?}" var="a">
    <li><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="appointment" action="create" params="['doctor.id': doctorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'appointment.label', default: 'Appointment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'doctorID', 'error')} ">
	<label for="doctorID">
		<g:message code="doctor.doctorID.label" default="Doctor ID" />
		
	</label>
	<g:textField name="doctorID" value="${doctorInstance?.doctorID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'doctorName', 'error')} ">
	<label for="doctorName">
		<g:message code="doctor.doctorName.label" default="Doctor Name" />
		
	</label>
	<g:textField name="doctorName" value="${doctorInstance?.doctorName}"/>
</div>

