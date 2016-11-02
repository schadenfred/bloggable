module Bloggable
  class Engine < ::Rails::Engine
    isolate_namespace Bloggable

    config.generators do |g|
      g.fixture_replacement :factory_girl
    end

    config.to_prepare do
      # include only the ApplicationHelper module
      # Bloggable::ApplicationController.helper ApplicationHelper

      # include all helpers from your application
      Bloggable::ApplicationController.helper Rails.application.helpers
  end

    initializer "model_core.factories", :after => "factory_girl.set_factory_paths" do
      FactoryGirl.definition_file_paths << File.expand_path('../../../test/factories', __FILE__) if defined?(FactoryGirl)
    end

  end
end
