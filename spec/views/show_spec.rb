RSpec.describe 'sentences/show.html.erb', type: :view do
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
end
