class UsersController < ApplicationController

  def index 
  	@employees = Employee.all
  end

  def new
  	 @attendance = Attendance.new
  	 @attendances = Attendance.all
  end
    def create
    @attendance = Attendance.new('status' => params[:status], 'year' =>Time.now.year,
    	'month' =>  Date.today.strftime("%B"), 'date' => Time.now.day, 'time' => Time.now.strftime("%I:%M:%S %z")) 
    if @attendance.save == true
      redirect_to "/"
    else
      render :new 
    end
  end
end

