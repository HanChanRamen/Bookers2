Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#top'#⇨ファイルがなかった　これ表示するには、ViewとController→rails g controller homes topをコマンドでうつ
  get "/home/about" => "home#about", as: "about"
  resources :books
  resources :users
end