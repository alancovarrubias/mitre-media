RSpec.describe 'sentences/index.html.erb', type: :view do
  it "displays the sentence's text" do
    assign(:sentences, [])

    render

    expect(rendered).to have_content('Sentences')
  end

  it 'redirects to the show action when a resource link is clicked' do
    sentence = Sentence.create(text: 'This is a sentence.')

    assign(:sentences, [sentence])

    render

    expect(rendered).to have_link('This is a sentence.', href: sentence_path(sentence))
  end
end
