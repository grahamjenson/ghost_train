require 'haml-rails'
require 'handlebars_assets'
require 'handlebars-rails'


module GhostTrain
  class Engine < ::Rails::Engine


    def gem_path(gemg)
      Gem::Specification.find_by_name(gemg).gem_dir
    end

    def stylesheets_path(gemg)
      File.join(gem_path(gemg), 'app', 'assets', 'stylesheets')
    end

    #here so can render partial directly from ghost
    paths["app/views"] << "vendor/assets/javascripts/"
    isolate_namespace GhostTrain

    #bug described here https://github.com/thoughtbot/bourbon/issues/42
    initializer "bourbon" do
      Sass.load_paths << stylesheets_path("bourbon")
    end

    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end

  end
end
