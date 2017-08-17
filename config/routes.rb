Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

# resources :doses, only: [:destroy]
# resources :doses, only: [:new, :create, :destroy]
