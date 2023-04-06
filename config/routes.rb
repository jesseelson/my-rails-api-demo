Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post '/blogs', to: 'blogs#create'

  get '/blogs', to: 'blogs#index'

  get '/blogs/:id', to: 'blogs#show'

  put '/blogs/:id', to: 'blogs#update'

  delete '/blogs/:id', to: 'blogs#destroy'
end
