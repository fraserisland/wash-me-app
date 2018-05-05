Rails.application.routes.draw do
  
  resources :conversations do
    resources :messages
  end

  post '/rate' => 'rater#create', :as => 'rate'
  get 'washers/near_you', to: 'washers#near_you'
  resources :washers


  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
