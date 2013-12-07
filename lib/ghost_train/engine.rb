module GhostTrain
  class Engine < ::Rails::Engine

    #here so can render partial directly from ghost
    paths["app/views"] << "vendor/assets/javascripts/"
    isolate_namespace GhostTrain


    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end

  end
end
