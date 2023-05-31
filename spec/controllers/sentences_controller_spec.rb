require 'rails_helper'

RSpec.describe SentencesController, type: :controller do
  let(:sentence) { Sentence.create(text: 'This is a sentence.') }
  describe 'GET index' do
    before do
      get :index
    end

    it 'assigns the correct sentence to @sentence' do
      expect(assigns(:sentences)).to eq([sentence])
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
    before do
      get :show, params: { id: sentence.id }
    end

    it 'assigns the correct sentence to @sentence' do
      expect(assigns(:sentence)).to eq(sentence)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
  end
end
