class Rails::AddcompGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_initializer_file
    @path = 'app/assets/stylesheets/components/'
    Dir.mkdir(@path) unless Dir.exists?(@path)
    @component_manifest = "#{@path}components.scss"
    create_file "#{@path}components.scss" unless File.exist?(@component_manifest)
  end

  def add_component
    if File.exist?(@component_manifest)
      content = File.read(@component_manifest)

      unless content.match(/#{file_name}\s+\.\s*$/)
        create_file "#{@path}_#{file_name}.scss", <<-FILE
/* #{file_name.upcase} */
        FILE
      end

      style_require_block = "@import '#{file_name}';\n"
      append_to_file @component_manifest, style_require_block
    end
  end
end
