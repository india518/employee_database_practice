EmployeeDatabase::Application.routes.draw do
  resources :teams
  resources :employees
  resources :employee_profiles
end
