GhostTrain::Engine.routes.draw do

  

  post 'upload/' => 'ghost#upload'
  
  root 'ghost#content', as: :posts

  get 'editor/:id' => 'ghost#edit', as: :edit_post 
  get 'editor' => 'ghost#new', as: :new_post

  get 'api/v0.1/tags/' => 'ghost#tags'

  get 'api/v0.1/posts/' => 'ghost#index'
  get 'api/v0.1/posts/:id' => 'ghost#show'
  put 'api/v0.1/posts/:id' => 'ghost#update'
  post 'api/v0.1/posts' => 'ghost#create'



end
