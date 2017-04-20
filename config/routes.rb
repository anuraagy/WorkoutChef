Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }, :skip => [:passwords, :sessions, :registrations]

  devise_scope :user do
    get 'login', :to => 'dashboard#login', :as => :new_user_session
    get 'logout', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  get '/dashboard', to: 'dashboard#index'
  post '/update_info', to: 'dashboard#update_info'
  root "dashboard#home"
end
