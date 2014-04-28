package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class NewPatientController {
	def index() { 
		def result = [:]//creates result map
		println("Index ${params}");// show params in console
		result.p = Patient.findAll()// finds results and populates them in result map
	return result// show params in console

	}
    def create() {
	      println(params);// show params in console
if(request.method=="POST"){// if form has been posted create new Patient
		
		def p = new Patient(patientID : params.pid,
				     patientFName : params.fname,                             
		                     patientSName : params.sname)
	if ( p.save() ) {
		  println("worked");//checks to see if form was successful and displays in console
		}
	
        else {
          p.errors.each { error ->
            println("Error: ${error}");// if form failed subbmit show error in console  
          }
        }
        redirect action: 'index'//redirect to the index
       }

    }
}
