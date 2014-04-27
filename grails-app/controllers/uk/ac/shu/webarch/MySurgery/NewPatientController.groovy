package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class NewPatientController {
	def index() { 
		def result = [:]
		println("Index ${params}");
		result.p = Patient.findAll()
	return result

	}
    def create() {
	      println(params);
if(request.method=="POST"){
		
		def p = new Patient(patientID : params.pid,
				     patientFName : params.fname,                             
		                     patientSName : params.sname)
	if ( p.save() ) {
		  println("worked");
		}
	
        else {
          p.errors.each { error ->
            println("Error: ${error}");
          }
        }
        redirect action: 'index'
       }

    }
}
