Rails.application.routes.draw do
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # .../lists/1 や .../lists/3に該当する
  resources :books
end
