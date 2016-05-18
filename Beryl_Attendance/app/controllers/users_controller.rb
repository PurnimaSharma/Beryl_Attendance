class UsersController < ApplicationController

  def index 
  	@employees = Employee.all
  end

  def new
  	 @attendance = Attendance.new
  	 @attendances = Attendance.all
     session[:current_year] = Time.now.year 
  end

  def attendance
    if params[:value] == 'next'
      session[:current_year] += 1 
    elsif params[:value] == 'prev'
      session[:current_year] -= 1 
    end
  end
  
  def create
      @employee = Employee.find_by(id: session[:current_employee]["id"])
       @attendance = @employee.attendances.create('status' => params[:status], 'year' =>Time.now.year,
        'month' =>  Date.today.strftime("%B"), 'date' => Time.now.day, 'time' => params[:time]) 
      if @attendance.save == true
        redirect_to "/"
      else
        render :new 
      end
  end
end

