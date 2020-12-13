Rails.application.routes.draw do
  devise_for :end_users
  root 'homes#top'
  get 'about' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	resources :items
  end
end
