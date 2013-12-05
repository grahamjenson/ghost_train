GhostTrain::Engine.routes.draw do

  root 'ghost#index'

  post 'upload/' => 'ghost#uploadimage'
  
  get 'api/v0.1/tags/' => 'ghost#tags'
  get 'api/v0.1/posts/' => 'ghost#posts'
  get 'api/v0.1/posts/:id' => 'ghost#post_show'
  put 'api/v0.1/posts/:id' => 'ghost#post_save'
  post 'api/v0.1/posts' => 'ghost#new_post'

  get 'editor/:id' => 'ghost#editor'
  get 'editor' => 'ghost#editor'

end
