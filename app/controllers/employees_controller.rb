class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @dogs = Dog.all
    @employee = Employee.create(employee_params)
    if @employee.valid?
      redirect_to employees_path
    else
      flash[:errors] = @employee.errors.full_messages
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end


  def show
    @employee = Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog, :img_url, :dog_id)
    #Had to add dog_id because of the way the form works!
  end
end
