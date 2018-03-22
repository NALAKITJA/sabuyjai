Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: "user/registrations",
   sessions: "user/sessions",
   passwords: "user/passwords"
 }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

   root to: "home#index"
end
