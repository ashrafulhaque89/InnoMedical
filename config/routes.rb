Rails.application.routes.draw do
  
  resources :diagnoses
  resources :doctor_apps
  resources :schedules do
    member do
      put :book
      patch :book
    end
  end
  resources :appointments
  resources :prescriptions
  resources :patient_profiles
  resources :patient_histories
  devise_for :users, controllers: { registrations: "user/registrations" } do
      resources :doctors
      resources :users, only: [:index]
  end
  resources :charges, only: [:new, :create]
  resources :doctors
  root :to => "home#index"
  get "home/index"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users' => 'users#index'
  get '/booked_schedules' => 'schedules#booked_schedules'
  get '/logout', to: 'users#logout'
  
  
 # get 'Create Appointment' => 'schedule'
  end





