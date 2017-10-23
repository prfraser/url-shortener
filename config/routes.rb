Rails.application.routes.draw do
  root 'short#index'
 	post 'short/index', to: 'short#shorten'

 	get ':hash', to: 'short#redirect'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
