ChatProject::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:index, :show] do
    member do
      get :chat
      post :chat
    end
  end
end
