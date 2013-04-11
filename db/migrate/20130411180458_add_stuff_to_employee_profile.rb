class AddStuffToEmployeeProfile < ActiveRecord::Migration
  def up
    add_column :employee_profiles, :height, :string
    add_column :employee_profiles, :age, :integer
    add_column :employee_profiles, :favorite_food, :string
    add_column :employee_profiles, :favorite_day_of_week, :string
    add_column :employee_profiles, :birth_date, :date
    add_column :employee_profiles, :salary, :decimal
    add_column :employee_profiles, :photo, :binary
  end
  
  def down
    remove_column :employee_profiles, :height
    remove_column :employee_profiles, :age
    remove_column :employee_profiles, :favorite_food
    remove_column :employee_profiles, :favorite_day_of_week
    remove_column :employee_profiles, :birth_date
    remove_column :employee_profiles, :salary
    remove_column :employee_profiles, :photo
  end
end
