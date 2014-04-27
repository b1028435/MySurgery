package uk.ac.shu.webarch.MySurgery

class Appointment {
  Doctor doctor
  Patient patient
  Date appointment
  boolean Arived

    


     static constraints = {
    }

  def calculateStatus(){
    println("calculateStatus ${id} ${patient.patientSName}  ${new Date()} > apptTime:${appointment} ? ${new Date() > appointment} arrived:${Arived}")

    def result = "Future"

    if(new Date()>appointment){
      if(Arived) {
        result="Arrived"
      }
      else{
        result ="Late"
      }
     }
     println("returning${result}")
     return result
   }
 }	

