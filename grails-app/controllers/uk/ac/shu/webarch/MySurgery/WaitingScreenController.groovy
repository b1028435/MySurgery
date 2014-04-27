package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class WaitingScreenController {
	def index() { 
		def result = [:]
		println("Index ${params}");
		result.a = Appointment.findAll()
	return result

	}
    def create() {
	      println(params);
if(request.method=="POST"){
		if(!params.checkedin){params.checkedin = 0}
		def a = new Appointment(doctor : params.doctor,                             
		                     patient : params.patient,
				     appointment : params.date('date',"yyyy-MM-dd'T'HH:mm"),
				     Arived : params.checkedin)

	if ( a.save() ) {
		  println("worked");
		}
	
        else {
          a.errors.each { error ->
            println("Error: ${error}");
          }
        }
        redirect action: 'index'
       }

    }
}
