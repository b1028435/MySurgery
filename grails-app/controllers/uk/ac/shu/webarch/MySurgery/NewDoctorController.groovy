package uk.ac.shu.webarch.MySurgery
import uk.ac.shu.webarch.MySurgery.*

class NewDoctorController {
	def index() { 
		def result = [:]
		println("Index ${params}");
		result.d = Doctor.findAll()
	return result

	}
    def create() {
	      println(params);
if(request.method=="POST"){
		
		def d = new Doctor(doctorID : params.did,
				   doctorName : params.dname)
	if ( d.save() ) {
		  println("worked");
		}
	
        else {
          d.errors.each { error ->
            println("Error: ${error}");
          }
        }
        redirect action: 'index'
       }

    }
}
