class SessionsController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end

  def create
  	@employee = Employee.find_by(email: params[:employee][:email])
    if @employee.present? && @employee.password == params[:employee][:password]
      session[:current_employee] = @employee 
      @employee.sign_in_count +=1
      @employee.current_sign_in_ip =request.remote_ip
      @employee.save
      render :js => "location.href = '/users';"
    else
      render :js =>  "$('.email_error').html('*Invalid email or password');"  
    end
  end

  def destroy
  	@employee = Employee.find_by(id: session[:current_employee]["id"])
    @employee[:last_sign_in_ip] = request.remote_ip
    @employee.save
    session.delete(:current_employee)
    @current_user = nil
    redirect_to '/'
  end

end