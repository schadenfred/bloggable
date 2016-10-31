module Bloggable
  class Engine < ::Rails::Engine
    isolate_namespace Bloggable

    config.generators do |g|
      g.fixture_replacement :factory_girl
    end
  end
end
