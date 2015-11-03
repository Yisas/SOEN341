	Rails.application.routes.draw do

  get 'sessions/new'

	 root 'static_pages#home'
	 get 'static_pages/login'
	 get 'help'    => 'static_pages#help'
	 get    'login'   => 'sessions#new'
  	post   'login'   => 'sessions#create'
  	delete 'logout'  => 'sessions#destroy'
	  
	end
