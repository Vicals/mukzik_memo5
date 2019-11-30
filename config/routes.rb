Rails.application.routes.draw do
  devise_for :users
  root 'memo#index'
  
  get 'memo/index'

  get 'memo/create'
  post 'memo/create'

  get 'memo/new'

  get 'memo/view'
  get 'memo/view/:id' => "memo#view"

  get 'memo/edit'
  get 'memo/edit/:id' => "memo#edit"

  get 'memo/update'
  post 'memo/update/:id' => "memo#update"

  get 'memo/destroy'
  get 'memo/destroy/:id' => "memo#destroy"
  
  post 'reply/create/:id' => "reply#create"
  
  get 'reply/destroy/:id' => "reply#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
