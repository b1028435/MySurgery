	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>Waiting Screen</h1>
		<p><a href="create.gsp">Create Booking</a></p>
		<table border="1">
			<tr>
				<th>Doctor Name</th>
				<th>Patient Surname</th>
				<th>Apointment Time</th>
				
			</tr>
			<g:each in="${a}" var="appointment">

			<g:if test= "${appointment.Arived }">
				<tr style="background-color:#9aff99">			
					<td>${appointment.doctor?.doctorName}</td>
					<td>${appointment.patient?.patientSName}</td>
					<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
				</tr>
			</g:if>


			<g:if test= "${!appointment.Arived}">





				
                               <g:if test= "${new Date() < appointment.appointment}">
					<tr style="background-color:#fd6864">			
						<td>${appointment.doctor?.doctorName}</td>
						<td>${appointment.patient?.patientSName}</td>
						<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
					</tr>


				</g:if>

		










				<tr style="background-color:#C9C9CA">			
					<td>${appointment.doctor?.doctorName}</td>
					<td>${appointment.patient?.patientSName}</td>
					<td><g:formatDate date="${appointment.appointment}" type="datetime" style="SHORT"/></td>
				</tr>





			</g:if>

			</g:each>
		</table>
	</body>
</html> 
