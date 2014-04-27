<%@ page import="uk.ac.shu.webarch.MySurgery.Appointment" %>



<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'appointment', 'error')} required">
	<label for="appointment">
		<g:message code="appointment.appointment.label" default="Appointment" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="appointment" precision="day"  value="${appointmentInstance?.appointment}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'arived', 'error')} ">
	<label for="arived">
		<g:message code="appointment.arived.label" default="Arived" />
		
	</label>
	<g:checkBox name="Arived" value="${appointmentInstance?.Arived}" />
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="appointment.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${uk.ac.shu.webarch.MySurgery.Doctor.list()}" optionKey="id" required="" value="${appointmentInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="appointment.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${uk.ac.shu.webarch.MySurgery.Patient.list()}" optionKey="id" required="" value="${appointmentInstance?.patient?.id}" class="many-to-one"/>
</div>

