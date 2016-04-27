class SessionsController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end

  def sign_in
  end

  def create
  	debugger
  	@employee = Employee.find_by(email: params[:employee][:email])
    if @employee.present? && (@employee.password == params[:employee][:password])
      session[:current_employee] = @employee
      @employee.update_attributes(:sign_in_count => sign_in_count + 1, :current_sign_in_ip => "request.remote_ip")
      redirect_to '/sessions/sign_in'
    else
       render :js =>  "$('.email_error').html('*Invalid email or password');"  
    end
  end

  def destroy
  	@employee = Employee.find_by(email: params[:id])
  	@employee.update_attributes( :last_sign_in_ip => "request.remote_ip")
    session.delete(:current_employee)
    @current_user = nil
  end

end