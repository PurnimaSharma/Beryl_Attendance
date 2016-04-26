class EmployeesController < ApplicationController
	 def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
  	@employee = Employee.new(employee_params)
  	if(@employee.save == true)
      redirect_to "/"
    else
      render :new 
    end
  end

  def employee_params
    params.require(:employee).permit(:fname, :lname, :email, :password, :phoneno ,:current_sign_in_ip )
  end

  def current_sign_in_ip 
    current_sign_in_ip  = request.remote_ip
  end

   
  def check_email
    @employee = Employee.find_by(email: params[:employee][:email])
    if @employee.present?
      respond_to do |format|
        format.json {render :json => false}
      end
    else
      respond_to do |format|
        format.json {render :json => true}
      end
    end
  end
end
