class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :height_feet, :height_inches, :age, :birth_date,
                  :favorite_food, :salary, :photo, :favorite_day_of_week,

  belongs_to :employee
end
