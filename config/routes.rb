# frozen_string_literal: true

Rails.application.routes.draw do
  resources :students
  resources :teams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "students#index"
end
