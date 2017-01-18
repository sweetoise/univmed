Rails.application.routes.draw do
  get 'filter/index'
  get 'adminpanel/superadmin'
  get 'adminpanel/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => {:registrations => "register", :sessions => "landing", :passwords => "passwords", :confirmations => "confirmations"}

  devise_scope :user do
    authenticated :user do
      root :to => 'filter#index'
    end
    unauthenticated :user do
      root :to => 'landing#new', as: :unauthenticated_root
    end

    get "/users/sign_out", :to => "devise/sessions#destroy"
    get 'devise/register/new'

  end

  resources :origamis
end
