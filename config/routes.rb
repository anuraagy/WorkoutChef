Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }, :skip => [:passwords, :sessions, :registrations]

  devise_scope :user do
    get 'login', :to => 'dashboard#index', :as => :new_user_session
    get 'logout', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  root "dashboard#index"
end
