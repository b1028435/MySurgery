package uk.ac.shu.webarch.MySurgery

class Patient {
	
    String patientID
    String patientFName
    String patientSName
    Set appointments


    static hasMany=[
    'appointments':Appointment
    ]

    static mappedBy=[
      'appointments':'patient'
    ]

    static constraints = {
    }
}
