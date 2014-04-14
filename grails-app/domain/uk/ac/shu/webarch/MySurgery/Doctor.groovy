package uk.ac.shu.webarch.MySurgery

class Doctor {

  String doctorID
  String doctorName

  Set appointments
	
  static hasMany=[
    appointments:Appointment
  ]

    static mappedBy=[
      appointments:'doctor'
    ]

    static constraints = {
    }
}
