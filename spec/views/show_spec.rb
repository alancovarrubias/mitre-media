RSpec.describe 'sentences/show.html.erb', type: :view do
  include SentencesHelper
  let(:sentence) { Sentence.create(text: 'This is a sentence.') }
  before do
    assign(:sentence, sentence)
  end

  it "displays the sentence's id" do
    render

    expect(rendered).to have_content("Sentence #{sentence.id}")
  end

  it "displays the sentence's text" do
    render

    expect(rendered).to have_content('This is a sentence.')
  end

  it "displays the sentence's highlighted text" do
    sentence.entities.create(text: 'is', entity_type: 'Mock Type')
    render

    expect(rendered).to have_selector('span.highlight', text: 'is Mock Type')
  end
end
