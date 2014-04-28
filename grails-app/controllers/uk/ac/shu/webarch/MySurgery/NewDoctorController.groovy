package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class NewDoctorController {
	def index() { 
		def result = [:]  //creates result map
		println("Index ${params}");// show params in console
		result.d = Doctor.findAll() // finds results and populates them in result map
	return result// returns map to page

	}
    def create() {
	      println(params);// show params in console
if(request.method=="POST"){// if form has been posted create new doctor
		
		def d = new Doctor(doctorID : params.did,
				   doctorName : params.dname)  //creates a new doctor from the params we entered on the form
	if ( d.save() ) {
		  println("worked");//checks to see if form was successful and displays in console
		}
	
        else {
          d.errors.each { error ->
            println("Error: ${error}");   // if form failed subbmit show error in console  
          }
        }
        redirect action: 'index'//redirect to the index
       }

    }
}
