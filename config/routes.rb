Rails.application.routes.draw do

  resources :prescriptions
  resources :patient_profiles
  resources :patient_histories
  devise_for :users, controllers: { registrations: "user/registrations" } do
      resources :doctors
  end
  resources :doctors
  root :to => "home#index"
  get "home/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
