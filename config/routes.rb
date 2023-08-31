Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  # get '/top' => 'homes#top'
  get 'books' => 'books#index'
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
