# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  
  Employee.create(fname: "India", lname:"Meisner")
  Employee.create(fname: "Susan", lname:"Mao", supervisor_id: 1)
  Employee.create(fname: "Larry", lname:"Ho", supervisor_id: 1)
  Employee.create(fname: "Jessica", lname:"Huang", supervisor_id: 1)
  Team.create(name: "QA department", supervisor_id: 1)
  TeamMembership.create(employee_id: 1, team_id: 1)
  TeamMembership.create(employee_id: 2, team_id: 1)
  TeamMembership.create(employee_id: 3, team_id: 1)
  TeamMembership.create(employee_id: 4, team_id: 1)
  
  Employee.create(fname: "Bob", lname:"Meads")
  Employee.create(fname: "David", lname:"Daocong", supervisor_id: 2)
  Employee.create(fname: "Nic", lname:"Luna", supervisor_id: 2)
  Team.create(name: "Layout", supervisor_id: 2)
  TeamMembership.create(employee_id: 5, team_id: 2)
  TeamMembership.create(employee_id: 6, team_id: 2)
  TeamMembership.create(employee_id: 7, team_id: 2)
  
end