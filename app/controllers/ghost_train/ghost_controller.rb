module GhostTrain

  class GhostController < ApplicationController

    def index
      
    end

    def posts
      render json: {}
    end
    
    def post_show
#      GhostPosts.find(params[:id])
      post = FactoryGirl.build(:ghost_post, :id => params[:id])
      render json: post
    end

    def post_save
      render json: {}
    end

    def new_post
#      GhostPosts.find(params[:id])
      post = FactoryGirl.build(:ghost_post)
      render json: post
    end

    def tags
      render json: [FactoryGirl.build(:ghost_tag)]
    end

    def uploadimage
      #must return a url with a link to the uploaded image
      uploadimage = params[:uploadimage]
      uploader = GhostTrain::GhostImageUploader.new
      uploader.store!(uploadimage)
      render :inline => uploader.url
    end

    def editor
      @fileStorage = true
    end

  end
end