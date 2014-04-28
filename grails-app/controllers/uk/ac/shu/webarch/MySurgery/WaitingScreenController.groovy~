package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class WaitingScreenController {
	def index() { 
		def result = [:]//creates result map
		println("Index ${params}");// show params in console
		// result.a = Appointment.findAll([sort:'appointment',order:'asc'])
                result.a = Appointment.findAll("from Appointment order by appointment asc");//order Appointment by date ascending 
	return result// returns map to page

	}
    def create() {
	      println(params);// show params in console
if(request.method=="POST"){// if form has been posted create new Appointment
		if(!params.checkedin){params.checkedin = 0}
		def a = new Appointment(doctor : params.doctor,                             
		                     patient : params.patient,
				     appointment : params.date('date',"yyyy-MM-dd'T'HH:mm"),
				     Arived : params.checkedin)//creates a new Appointment from the params we entered on the form

	if ( a.save() ) {
		  println("worked");  //creates a new Appointment from the params we entered on the form
		}
	
        else {
          a.errors.each { error ->
            println("Error: ${error}");// if form failed subbmit show error in console  
          }
        }
        redirect action: 'index'
       }

    }
}
