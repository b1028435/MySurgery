package uk.ac.shu.webarch.MySurgery

class Appointment {
  Doctor doctor //link doctor element in doctor domain to the  Appointment domain
  Patient patient//link doctor element in doctor domain to the  Appointment domain
  Date appointment
  boolean Arived

    


     static constraints = {
    }

  def calculateStatus(){
    println("calculateStatus ${id} ${patient.patientSName}  ${new Date()} > apptTime:${appointment} ? ${new Date() > appointment} arrived:${Arived}")

    def result = "Future"// if time is more than now then  display in this

    if(new Date()>appointment){
      if(Arived) {
        result="Arrived"// if time is more than now then  display in this
      }
      else{
        result ="Late"// if time is more than now then  display in this
      }
     }
     println("returning${result}")
     return result
   }
 }	

