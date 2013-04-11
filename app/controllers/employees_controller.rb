class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to employee_url(@employee)
    else
      fail
      flash.now[:errors] = @employee.errors.full_messages
      render :new
    end
  end
  
  def show
    @employee = Employee.find(params[:id])
    #eventually redirect_to employee_profile(@employee) ?
  end
  
  def edit
  end
  
  def update
  end
  
  def destory
  end
end
