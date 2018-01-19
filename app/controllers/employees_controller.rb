class EmployeesController < ApplicationController
  def index
  	@employee = Employee.all
  end

	def new
		@employee = Employee.new
  end

	def create
		@employee = Employee.new(get_params)
 
  	@employee.save
  	if @employee.save
    	redirect_to @employee
  	else
    	render 'new'
  	end
  end

	def show
		@employee = Employee.find(params[:id])
  end

	def edit
		@employee = Employee.find(params[:id])
  end

	def update
		@employee = Employee.find(params[:id])
 
  if @employee.update(get_params)
    redirect_to @employee
  else
    render 'edit'
  end
  end

	def destroy
		 @employee = Employee.find(params[:id])
   @employee.destroy
 		 redirect_to employees_path
 	
  end	  

  def get_params
params.require(:employee).permit(:Name, :Mobile, :email, :password, :password_confirmation)
  end

		  
	  
	  

end
