package mysurgery

class AppointmentController {

    def index() {



	try  {
	      def dateval = params.date('Dob','yyyy-MM-dd')
		System.out.println(params);
		System.out.println("dateval::${dateval}");


		}
	catch{

		System.out.println(params);
		System.out.println("dateval::${dateval}");

		}	
    }
}
