
	<head>
		<meta name="layout" content="main">
	</head>
	 <body>
	  <h1>Create booking</h1>
	  <div><a href="index.gsp">booking Index</a></div>
		  <g:form action="create">
			<label>Doctor</label>

                                             <g:select name="doctor"
          from="${uk.ac.shu.webarch.MySurgery.Doctor.list()}"
          value="${doctor}"
          optionValue="doctorName"
          optionKey="id" /><br>
			<label>Date</label><input type="datetime-local" name="date"><br>
			<label>Patient</label><input name="patient" type="text"/><br>
			<label>Checked In</label><input name="checkedin" type="checkbox"/><br>
			<input type="submit"/>
		  </g:form>
	 </body>
