class Employee < ActiveRecord::Base
  attr_accessible :fname, :lname, :supervisor_id
  
  belongs_to :supervisor, :class_name => "Employee"
  has_many :subordinates, :foreign_key => "supervisor_id",
           :class_name => "Employee"
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
end
