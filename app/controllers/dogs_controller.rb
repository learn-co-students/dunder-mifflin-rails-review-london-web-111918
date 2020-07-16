class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    if params[:order]
      @dogs = Dog.order_by_no_of_employees
    else
      @dogs = Dog.all
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to dog_path(@dog)
  end

  def show
  end

  def edit
  end

  def update
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.permit(:name, :breed, :age)
  end

  def set_dog
    @dog = Dog.all.find(params[:id])
  end

end
