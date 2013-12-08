# GhostTrain
[Ghost](https://ghost.org/) is "just a blogging platform" which is written in nodejs and has an excellent editor. GhostTrain is Ghost extracted into a mountable Rails engine so that anyone can use the editor for more than just a blog.

###To install

```
gem 'ghost_train'
```

then

###To use

In ```app\decorators\controllers\ghost_train\ghost_controller_decorator.rb``` include a decorator like the one below


```ruby
GhostTrain::GhostController.class_eval do

  protected

  def get_uploader
    # return a carrierwave uploader e.g. Uploader.new
  end

  def get_posts
    # return a list of posts
  end

  def get_tags
    #return a list of tags
  end

  def get_post(id)
    #return specific post
  end

  def update_post(params)
    #update the post
    #return post
  end

  def create_post(params)
    #create the post from params
    #return post with id
  end

end
```

The formats of post and tag can be seen in the factories defined in the dummy application.

By abstracting these methods and ghost not creating the models directly, means that ghosttrain can be used with existing models.

TODOS
Get the notification system working better.