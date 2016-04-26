class EmployeesController < ApplicationController
	 def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
  	@employee = Employee.new('fname' => params[:employee])
  	if(@employee.save == true)
      redirect_to "/"
    else
      render :new 
    end
  end
end
