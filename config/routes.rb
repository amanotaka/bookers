Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  get 'books' => 'bookss#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
