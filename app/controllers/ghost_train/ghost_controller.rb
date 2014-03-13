module GhostTrain

  class GhostController < ApplicationController


    #Things that shouldnt be here, but they are --graham
    def content
      @messages = get_messages
      @adminUrl = main_app.ghost_train_path
      render 'index'
    end

    def upload
      #must return a url with a link to the uploaded image
      uploadimage = params[:uploadimage]
      uploader = get_uploader
      uploader.store!(uploadimage)
      render :inline => uploader.url
    end

    def tags
      tags = get_tags
      render json: tags 
    end

    #Posts API stuff
    def index
      posts = get_posts
      render json: posts
    end
    
    def show
      post =  get_post(params[:id])
      render json: post
    end

    def update
      post = update_post(params[:id], params[:ghost])
      render json: post
    end

    def create
      post = create_post(params[:ghost])
      #render json: post, status: 403
      render json: post
    end

    def destroy
      post = destroy_post(params[:id])
      render json: post
    end

    def edit
      @fileStorage = !!get_uploader
      
      @messages = get_messages
      
      render 'editor'
    end

    def new
      @fileStorage = !!get_uploader

      @messages = get_messages

      render 'editor'
    end

    protected
    #required things
    def get_tags
      raise NotImplementedError.new
    end

    def get_posts
      raise NotImplementedError.new
    end

    def get_post(id)
      raise NotImplementedError.new
    end

    def update_post(id, params)
      raise NotImplementedError.new
    end

    def create_post(params)
      raise NotImplementedError.new
    end

    def destroy_post(id)
      raise NotImplementedError.new
    end

    def get_messages
      []
    end

    def get_uploader
      nil
    end

  end
end