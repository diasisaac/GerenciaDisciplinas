Rails.application.routes.draw do
  resources :atividades
  resources :disciplinas
  resources :alunos
  resources :turmas
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
