Blorgh::Application.routes.draw do
  root :to => "posts#index"
  resources :posts, only: [:index, :show] do
    resources :comments
  end

  namespace :api do
    resources :posts do
      resources :comments
    end
  end

  namespace :admin do
    resources :posts
  end

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'

  delete '/sign_out' => 'sessions#destroy'
end
