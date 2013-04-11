class Team < ActiveRecord::Base
  attr_accessible :name
  
  has_many :subordinates, :foreign_key => "supervisor_id",
           :class_name => "Employee"
  
  has_many :memberships, :class_name => "TeamMembership"
  has_many :members, :through => :memberships, :source => :employee
end
