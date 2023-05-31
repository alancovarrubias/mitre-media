RSpec.describe 'sentences/show.html.erb', type: :view do
  include SentencesHelper
  it "displays the sentence's id" do
    sentence = Sentence.create(text: 'This is a sentence.')
    assign(:sentence, sentence)

    render

    expect(rendered).to have_content("Sentence #{sentence.id}")
  end

  it "displays the sentence's text" do
    sentence = Sentence.create(text: 'This is a sentence.')
    assign(:sentence, sentence)

    render

    expect(rendered).to have_content('This is a sentence.')
  end

  it "displays the sentence's highlighted text" do
    sentence = Sentence.create(text: 'This is a sentence.')
    sentence.entities.create(text: 'is', entity_type: 'Mock Type')
    assign(:sentence, sentence)

    render

    expect(rendered).to have_selector('span.highlight', text: 'is Mock Type')
  end
end
