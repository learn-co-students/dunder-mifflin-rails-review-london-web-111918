class Dog < ApplicationRecord

  has_many :employees

  def self.order_by_no_of_employees
    self.all.sort_by{ |dog| dog.employees.length }.reverse
  end

end
