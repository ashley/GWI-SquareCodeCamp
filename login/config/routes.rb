Rails.application.routes.draw do	
  get 'users/new'
  get 'pages/profile'
devise_for :users, :path_names => { :sign_up => "register" }, controllers: {
        registrations: 'users/registrations'}
#root to: redirect('/users/sign_in')
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
