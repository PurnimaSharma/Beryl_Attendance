class SessionsController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end

  def initialize
  	sign_in_count= 0
  end
  
  def sign_in
  end

  def create
  	@employee = Employee.find_by(email: params[:employee][:email])
    if @employee.present? && @employee.password == params[:employee][:password]
      session[:current_employee] = @employee
      sign_in_count =+ 1
      redirect_to '/sessions/sign_in'
    else
       render :js =>  "$('.email_error').html('*Invalid email or password');"  
    end
  end

end