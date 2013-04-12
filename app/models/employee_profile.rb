class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :height_feet, :height_inches, :age, :birth_date,
                  :favorite_food, :salary, :favorite_day_of_week, :pic
  # TODO: does age have to be a column, or should we just calculate it?
  
  validates :height_inches, :inclusion => 0..11 #12 inches is another foot!
  validates :favorite_day_of_week, :inclusion => Date::DAYNAMES
  
  belongs_to :employee
  
  has_attached_file :pic, :styles => { :medium => "300x300>",
                                       :thumb => "100x100>" }
end
