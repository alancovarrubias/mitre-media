RSpec.describe 'sentences/index.html.erb', type: :view do
  it "displays the sentence's text" do
    sentence1 = Sentence.create(text: 'This is sentence 1.')
    sentence2 = Sentence.create(text: 'This is sentence 2.')

    assign(:sentences, [sentence1, sentence2])

    render

    expect(rendered).to have_content('This is sentence 1.')
    expect(rendered).to have_content('This is sentence 2.')
  end
end
