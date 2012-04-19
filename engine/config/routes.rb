Engine::Application.routes.draw do
  devise_for :users
    devise_scope :user do
    get "sign_in",  :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    get "sign_up", :to => "users/registration#new"
    get "edit_account", :to => "users/registration#edit"
  end

  mount Billing::Engine => "/billing"
end
