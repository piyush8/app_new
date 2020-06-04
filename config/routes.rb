Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :news, only: [:index]
  get 'news/import', to: 'news#import', as: 'import'
  get 'news/get_news_data_api', to: 'news#get_news_data_api'
  root 'news#index'
end
