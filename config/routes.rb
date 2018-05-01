Rails.application.routes.draw do

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

resources :articles;

  authenticated :user do
    root 'main#home'
  end

  unauthenticated :user do
    get 'devise/sessions/new' => 'devise/sessions#new'
  end
end
