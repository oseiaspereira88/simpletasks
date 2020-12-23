Rails.application.routes.draw do
  resources :tarefas
  resources :comentarios

  root "welcome#index"
  get 'home' => "home#index"
  post 'home' => "home#create_task"
  # get 'home' => "home#show_task"
  patch 'home' => "home#update_task"
  delete 'home' => "home#destroy_task"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
