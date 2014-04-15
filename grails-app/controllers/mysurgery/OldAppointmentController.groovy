package mysurgery

class OldAppointmentController {

    def index() {



	try  {
		def dateNowval = new Date()//TODO
		def dateval = params.date('Dob','yyyy-MM-dd')//TODO
		System.out.println(params);
		System.out.println("dateval::${dateval}");



        }
	catch (Exception e) {
	handleException(e, "There was an error ")
		System.out.println(params);
		System.out.println("dateval::${dateval}");


	}	
    }
}
