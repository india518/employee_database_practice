class AddPicPaperclip < ActiveRecord::Migration
  def up
    remove_column :employee_profiles, :photo
    add_column :employee_profiles, :pic_file_name,    :string
    add_column :employee_profiles, :pic_content_type, :string
    add_column :employee_profiles, :pic_file_size,    :integer
    add_column :employee_profiles, :pic_updated_at,   :datetime
  end

  def down
    add_column :employee_profiles, :pic_file_name
    add_column :employee_profiles, :pic_content_type
    add_column :employee_profiles, :pic_file_size
    add_column :employee_profiles, :pic_updated_at
    remove_column :employee_profiles, :photo, :binary
  end
end
