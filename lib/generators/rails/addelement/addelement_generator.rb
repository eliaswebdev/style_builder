class Rails::AddelementGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_initializer_file
    @path = 'app/assets/stylesheets/elements/'
    Dir.mkdir(@path) unless Dir.exists?(@path)
    @element_manifest = "#{@path}elements.scss"
    create_file "#{@path}elements.scss" unless File.exist?(@element_manifest)
  end

  def add_element
    if File.exist?(@element_manifest)
      content = File.read(@element_manifest)

      unless content.match(/#{file_name}\s+\.\s*$/)
        create_file "#{@path}_#{file_name}.scss", <<-FILE
/* #{file_name.upcase} */
        FILE
      end

      style_require_block = "@import '#{file_name}';\n"
      append_to_file @element_manifest, style_require_block
    end
  end
end
