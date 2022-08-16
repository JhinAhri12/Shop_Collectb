Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'shops#index'
  scope "/:locale", :locale => /en|fr/ do
    resources :shops, only: [:index, :show]
  end
end
