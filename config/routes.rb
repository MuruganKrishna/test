Rails.application.routes.draw do
  get 'home/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :payments
  resources :reimbursements
  resources :asserts
  resources :attendances
  resources :salaries
  resources :employees
  resources :company_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
