module GhostTrain
  class Engine < ::Rails::Engine

    paths["app/views"] << "vendor/assets/javascripts/"
    isolate_namespace GhostTrain
  end
end
