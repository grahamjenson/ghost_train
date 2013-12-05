GhostTrain::Engine.routes.draw do

  

  post 'upload/' => 'ghost#uploadimage'

  get 'api/v0.1/tags/' => 'ghost#tags'
  get 'api/v0.1/posts/' => 'ghost#posts'
  get 'api/v0.1/posts/:id' => 'ghost#post_show'
  put 'api/v0.1/posts/:id' => 'ghost#post_save'
  post 'api/v0.1/posts' => 'ghost#new_post'

  root 'ghost#index', as: :posts
  get 'editor/:id' => 'ghost#editor', as: :edit_post 
  get 'editor' => 'ghost#editor', as: :new_post

end
