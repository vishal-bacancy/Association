class DoctorsController < ApplicationController
  def index
  	@doctors = Doctor.all
  end
 
  def new
		@doctor = Doctor.new
  end

	def create
		@doctor = Doctor.new(get_params)
 
  	@doctor.save
  	if @doctor.save
    	redirect_to @doctor
  	else
    	render 'new'
  	end
  end

	def show
		@doctor = Doctor.find(params[:id])
  end

	def edit
		@doctor = Doctor.find(params[:id])
  end

	def update
		@doctor = Doctor.find(params[:id])
 
  if @doctor.update(get_params)
    redirect_to @doctor
  else
    render 'edit'
  end
  end

	def destroy
		 @doctor = Doctor.find(params[:id])
   @doctor.destroy
 		 redirect_to doctors_path
 	
  end	  

  def get_params
params.require(:doctor).permit(:name)
  end


end
