Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :user_educations
    member do 
      resources :user_educations
    #  get :add_education
    #  post :save_education
    #  delete :delete_education
    end
  end
end
Rails.application.routes.default_url_options[:host] = 'localhost:3000'
