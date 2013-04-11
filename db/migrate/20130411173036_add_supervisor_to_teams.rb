class AddSupervisorToTeams < ActiveRecord::Migration
  def up
    add_column :teams, :supervisor_id, :integer
  end
  
  def down
    remove_column :teams, :supervisor_id
  end
end
