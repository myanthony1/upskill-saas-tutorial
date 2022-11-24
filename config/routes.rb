Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create, as: 'new_contact'
  get 'contact-us', to: 'contacts#new'
end
