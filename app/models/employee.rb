class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true, if: :no_alias?
  validates :title, uniqueness: true, if: :no_title?

  def no_alias?
    :alias == "none"
  end

  def no_title?
    :title == "none"
  end

end
