	Rails.application.routes.draw do

	 root 'static_pages#home'
	 get 'static_pages/login'
	 get 'help'    => 'static_pages#help'
	 get 'login'    => 'static_pages#login'
	  
	end
