class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :height, :age, :favorite_food, :salary, :photo,
                  :favorite_day_of_week
end
