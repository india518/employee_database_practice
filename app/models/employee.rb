class Employee < ActiveRecord::Base
  attr_accessible :fname, :lname, :supervisor_id
  
  belongs_to :supervisor, :class_name => "Employee"
  has_many :subordinates, :foreign_key => "supervisor_id",
           :class_name => "Employee"
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
  
  has_many :supervised_teams, :foreign_key => "supervisor_id",
           :class_name => "Team", :inverse_of => :supervisor
  
end
