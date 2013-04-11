class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :height_feet, :height_inches, :age, :birth_date,
                  :favorite_food, :salary, :photo, :favorite_day_of_week
  # TODO: does age have to be a column, or should we just calculate it?
  
  validates :height_inches, :inclusion => 0..11 #12 inches is another foot!
  validates :favorite_day_of_week, :inclusion => Date::DAYNAMES
  
  belongs_to :employee
  
end
