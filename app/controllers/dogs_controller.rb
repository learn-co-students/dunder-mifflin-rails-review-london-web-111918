class DogsController < ApplicationController

def index
  @dogs = Dog.all
end

def ordered
  @dogs = Dog.all.sort_by {|dog| dog.employees.length}.reverse
  render 'index'
end

def show
  @dog = Dog.find(params[:id])
end

end
