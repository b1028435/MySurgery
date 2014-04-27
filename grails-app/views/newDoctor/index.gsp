	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>Patient Screen</h1>
		<p><a href="create.gsp">Create Doctor</a></p>
		<table border="1">
			<tr>
				
<th>id</th>
				<th>Doctor ID</th>
				<th>Doctor name</th>
				
				
			</tr>
			<g:each in="${d}" var="doctor">

				<tr>	
					<td>${doctor.doctorID}</td>		
					<td>${doctor.doctorName}</td>
				</tr>

			</g:each>
		</table>
	</body>
</html> 
