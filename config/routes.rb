Rails.application.routes.draw do

  root :to => "sessions#new"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  get "evaluator" => "home#evaluator"
  get "evaluated" => "home#evaluated"
  get "index" => "home#index"

  resources :users
  resources :sessions

end
