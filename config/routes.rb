Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
	# post '/login', to: 'sessions#create'
	post 'login', action: :create, controller: 'sessions'

	delete '/logout', to: 'sessions#destroy'
	get '/me', action: :show, controller: 'users'
end