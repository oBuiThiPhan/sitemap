Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "pages#index"

    resources :categories do
      resources :posts
    end
    get '/sitemap', to: 'pages#sitemap'
  end
end
