class ChangeHeightInEmployeeProfiles < ActiveRecord::Migration
  def up
    remove_column :employee_profiles, :height
    add_column :employee_profiles, :height_feet, :integer
    add_column :employee_profiles, :height_inches, :integer
  end

  def down
    remove_column :employee_profiles, :height_feet
    remove_column :employee_profiles, :height_inches
    add_column :employee_profiles, :height, :string
  end
end
