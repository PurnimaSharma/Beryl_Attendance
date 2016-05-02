class UsersController < ApplicationController

  def index 
  	@attendances = Attendance.all
  end

  def new
  	 @attendance = Attendance.new
  	 @attendances = Attendance.all
  end
    def create
    @attendance = Attendance.new('status' => params[:status], 'year' =>Time.now.year,
    	'month' => Time.now.month, 'date' => Time.now.day) 
    if @attendance.save == true
      redirect_to "/"
    else
      render :new 
    end
  end
end

