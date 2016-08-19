Rails.application.routes.draw do
  resources :beats, except: [:new, :edit]
  resources :patterns, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :users do
    resources :patterns
  end
  resources :patterns do
    resources :beats
  end
end
