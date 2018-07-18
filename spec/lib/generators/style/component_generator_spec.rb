require_relative "../../../../lib/generators/style/component_generator"
describe Style::Generators::ComponentGenerator do
  it "initialize function" do
    expect(Style::Generators::ComponentGenerator.create_initializer_file).to be 'Hi!!!!'
  end
end