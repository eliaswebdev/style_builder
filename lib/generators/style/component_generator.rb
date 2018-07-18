module Style
  module Generators
    # rails g style:component header
    class ComponentGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      def create_initializer_file
        'Hi!!!!'
      end

    end
  end
end