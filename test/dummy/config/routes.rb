Rails.application.routes.draw do

  mount GhostTrain::Engine => "/ghost"

  get 'sign_out' => 'user#sign_out', as: :sign_out

  get 'user/:id' => 'user#show', as: :user 

end
