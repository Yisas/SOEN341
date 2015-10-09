Rails.application.routes.draw do
  root            'logged_out#index'
  get 'help'  =>  'logged_out#help'
  get 'home'  =>  'students#home'
end
