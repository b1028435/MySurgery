	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>Patient Screen</h1>
		<p><a href="create.gsp">Create Booking</a></p>
		<table border="1">
			<tr>
				
<th>id</th>
				<th>Patient Surname</th>
				
				
			</tr>
			<g:each in="${p}" var="patient">

				<tr>	
					<td>${patient.patientID}</td>		
					<td>${patient.patientFName}</td>
					<td>${patient.patientSName}</td>
					
				</tr>

			</g:each>
		</table>
	</body>
</html> 
