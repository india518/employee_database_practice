class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end
  
  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to employee_url(@employee)
    else
      flash.now[:errors] = @employee.errors.full_messages
      render :new
    end
  end
  
  def show
    @employee = Employee.find(params[:id])
    #eventually redirect_to employee_profile(@employee) ?
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to employee_url(@employee)
    else
      flash.now[:errors] = @employee.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    @employee = Employee.find(params[:id]) #REV: any reason you did this on two lines? just curious.
    @employee.destroy
    redirect_to employees_url
  end
end
