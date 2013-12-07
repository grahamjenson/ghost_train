GhostTrain::GhostController.class_eval do

  protected

  def get_uploader
    GhostTrain::GhostImageUploader.new
  end

  def get_posts
    FactoryGirl.build(:ghost_posts)
  end

  def get_tags
    [FactoryGirl.build(:ghost_tag)]
  end

  def get_post(id)
    FactoryGirl.build(:ghost_post, :id => id)
  end

  def update_post(params)
    return {}
  end

  def create_post(params)
    FactoryGirl.build(:ghost_post)
  end

end