Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create] do
    resources :tweets, only: [:index]
  end
end
