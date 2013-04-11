class Employee < ActiveRecord::Base
  attr_accessible :fname, :lname, :supervisor_id
end
