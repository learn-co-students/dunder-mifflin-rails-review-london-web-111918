class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def name_to_string
    first_name.to_s + " " + last_name.to_s
  end

end
