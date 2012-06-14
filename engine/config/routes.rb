Engine::Application.routes.draw do
  devise_for :users
    devise_scope :user do
    get "sign_in",  :to => "devise/sessions#new"
    get "sign_out", :to => "devise/sessions#destroy"
    get "sign_up", :to => "devise/registrations#new"
    get "edit_account", :to => "devise/registrations#edit"
    
  end
  root :to => "home#index"
  mount Billing::Engine => "/billing"
end
