class Dog < ApplicationRecord
  has_many :employees

  def employee_list
    array = []
    employees.each do |employee|
      array << employee.name_to_string
    end
    array.join(', ')
  end

end
