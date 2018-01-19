class AppointmentsController < ApplicationController
  def index
  	@appointments = Appointment.all
  	@doctors = Doctor.all
  	@patients = Patient.all
  end

  def appos
		@appointments = Appointment.where(doctor_id: params[:id])
		
		# redirect_to appointment_of_doctor_path(params[:id])

  end

def new
	@appointment = Appointment.new

end


	def create
		@dr = Doctor.find(params[:appointment][:doctor_id])
 
  	@dr.appointments.create(patient_id: params[:appointment][:patient_id],appointment_date: params[:appointment][:appointment_date],appointment_time: params[:appointment][:appointment_time])
  	redirect_to employees_path
  	end
  


	
 def get_params
params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_date, :appointment_time)
  end

end
