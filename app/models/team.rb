class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids, :employee_ids
  
  validates :name, :supervisor_id, :presence => true
  
  has_many :memberships, :class_name => "TeamMembership"
  has_many :members, :through => :memberships, :source => :employee
  
  belongs_to :supervisor, :foreign_key => "supervisor_id",
             :class_name => "Employee", :inverse_of => :supervised_teams
             
end
