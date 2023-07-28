Rails.application.routes.draw do
  devise_for :users
  post 'records/filter', to: "records#filter"
  resources :members, controller: :users, only: [:index, :show, :create, :update, :destroy] do
    resources :records, only: [:index, :show, :create, :update, :destroy]
    post 'records/report', to: "records#report"
  end  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
