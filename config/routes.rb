Rails.application.routes.draw do

  root :to => "sessions#new"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  get "evaluated_one" => "evaluated#step_one", :as => "evaluated_step_one"
  get "evaluated_two" => "evaluated#step_two", :as => "evaluated_step_two"
  get "evaluated_three" => "evaluated#step_three", :as => "evaluated_step_three"
  get "evaluated_four" => "evaluated#step_four", :as => "evaluated_step_four"

  get "evaluator" => "home#evaluator", :as => "evaluator"
  get "evaluated" => "home#evaluated", :as => "evaluated"
  get "index" => "home#index"

  resources :users
  resources :goals
  resources :sessions

end
