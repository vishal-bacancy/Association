class PatientsController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def new
		@patient = Patient.new
  end

	def create
		@patient = Patient.new(get_params)
 
  	@patient.save
  	if @patient.save
    	redirect_to @patient
  	else
    	render 'new'
  	end
  end

	def show
		@patient = Patient.find(params[:id])
  end

	def edit
		@patient = Patient.find(params[:id])
  end

	def update
		@patient = Patient.find(params[:id])
 
  if @patient.update(get_params)
    redirect_to @patient
  else
    render 'edit'
  end
  end

	def destroy
		 @patient = Patient.find(params[:id])
   @patient.destroy
 		 redirect_to patients_path
 	
  end	  

  def get_params
params.require(:patient).permit(:name)
  end

		  
end
