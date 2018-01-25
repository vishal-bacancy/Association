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
 
  	if @dr.appointments.create(patient_id: params[:appointment][:patient_id],appointment_date: params[:appointment][:appointment_date],appointment_time: params[:appointment][:appointment_time])
#      exit
  	 redirect_to employees_path
    else
      render 'new'
    end


  	end
  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
 
  if @appointment.update(get_params)
    redirect_to appointments_path
  else
    render 'edit'
  end
  end

  def destroy
     @appointment = Appointment.find(params[:id])
   @appointment.destroy
     redirect_to appointments_path
  
  end   


	
 def get_params
params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_date, :appointment_time)
  end

end
