class EmployeeController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
  end
end
