Rails.application.routes.draw do	
  get 'users/new'

devise_for :users, :path_names => { :sign_up => "register" }
root to: redirect('/users/sign_in')
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
