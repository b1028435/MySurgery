<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">


		<g:if test= "${params.Sname != null}">			

		Surname:${params.Sname}<br>
		First Name:${params.Dob}
		Dob:${params.Dob}
		NationalId:${params.Dob}
		GP:${params.Dob}



		</g:if >
		<g:else >
			<h1>Search</h1>
			<form>
			Surname: <input type="text" name="Sname"> <br>
			Dob: <input type="date" name="Dob"> <br>
			<input type="submit">
			</form>
		</g:else >

			<g:if test="${flash.message}">
				   <div class="message" style="display: block">${flash.message}</div>
			       </g:if>




		</div>
			<g:if test="${params.Sname != null}">
			
		
				<form action=id="applicationForm">
				apointment date:<input type="datetime-local" name="apointmentdate"> <br>
				<input type="submit">
				</form>
					<textarea rows="4" cols="50" name="Notes" form="applicationForm">
					Enter text here...</textarea>
			 </g:if>


		
	
	</body>
</html>
