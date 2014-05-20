MobileTracker::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  root to: "home#index"

  resources :employees do
    resources :employee_locations, :only => [:index, :show], :path => "locations"
  end
end
