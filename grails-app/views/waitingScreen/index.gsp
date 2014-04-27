	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>Waiting Screen</h1>
		<p><a href="create.gsp">Create Booking</a></p>
		<table border="1">
			<tr>
				<th>Doctor Name</th>			<!-- TABLE  NAMES -->
				<th>Patient Surname</th>
				<th>Apointment Time</th>
				
			</tr>
			<g:each in="${a}" var="appointment"> <!-- Loop begin --> 

			<g:if test="${appointment.calculateStatus()=='Future'}"> <!-- calling calculate status -->
			<tr style="background-color:#C9C9CA">	<!--table row changed to grey-->		
						<td><g:link controller="appointment" action="edit" id="${appointment.id}">${appointment.doctor?.doctorName}</g:link></td> <!-- Show doctor name -->
						<td>${appointment.patient?.patientSName}</td><!-- show patient name -->
						<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
					</tr>
			</g:if>

			<g:if test="${appointment.calculateStatus()=='Late'}"> <!-- calling calculate status -->
			<tr style="background-color:#fd6864">	<!--table row changed to red-->		
						<td>${appointment.doctor?.doctorName}</td> <!-- Show doctor name -->
						<td>${appointment.patient?.patientSName}</td><!-- show patient name -->
						<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
					</tr>
			</g:if>

			<g:if test="${appointment.calculateStatus()=='Arrived'}"> <!-- calling calculate status -->
			<tr style="background-color:#9aff99">	<!--table row changed to green-->		
						<td>${appointment.doctor?.doctorName}</td> <!-- Show doctor name -->
						<td>${appointment.patient?.patientSName}</td><!-- show patient name -->
						<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
					</tr>
			</g:if>

		
			

			</g:each> <!--Loop end-->
		</table>
	</body>
</html> 
