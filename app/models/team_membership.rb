class TeamMembership < ActiveRecord::Base
  attr_accessible :employee_id, :team_id
  
  validates :team_id, :uniqueness => { :scope => :employee_id }
  
  belongs_to :employee
  belongs_to :team
  
end
