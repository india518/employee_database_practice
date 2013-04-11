class Employee < ActiveRecord::Base
  attr_accessible :fname, :lname, :supervisor_id, :team_ids,
                  :employee_profile_attributes
  
  validates :fname, :lname, :presence => true
  
  belongs_to :supervisor, :class_name => "Employee"
  has_many :subordinates, :foreign_key => "supervisor_id",
           :class_name => "Employee"
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
  has_many :supervised_teams, :foreign_key => "supervisor_id",
           :class_name => "Team", :inverse_of => :supervisor
  
  has_one :employee_profile
  accepts_nested_attributes_for :employee_profile
  
  # TODO: custom validation so you can't be the boss of your boss
  # validate that your id is not your supervisor's supervisor_id?
  
  def fullname
    "#{fname} #{lname}"
  end
  
end
