class UsersController < ApplicationController

  def index 
  	@employees = Employee.all
  end

  def new
  	 @attendance = Attendance.new
  	 @attendances = Attendance.all
     session[:current_year] = Time.now.year 
  end
  
  def create
    if params[:next]
      session[:current_year] += 1 
      render :new 
    elsif params[:previous]
      session[:current_year] -= 1 
      render :new 
    else
      @attendance = Attendance.new('status' => params[:status], 'year' =>Time.now.year,
        'month' =>  Date.today.strftime("%B"), 'date' => Time.now.day, 'time' => Time.now.strftime("%I:%M:%S %z")) 
      if @attendance.save == true
        redirect_to "/"
      else
        render :new 
      end
    end
  end
end

