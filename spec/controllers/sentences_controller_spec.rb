require 'rails_helper'

RSpec.describe SentencesController, type: :controller do
  describe 'GET index' do
    it 'assigns the correct sentence to @sentence' do
      sentence = Sentence.create(text: 'This is a sentence.')

      get :index

      expect(assigns(:sentences)).to eq([sentence])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET show' do
    it 'assigns the correct sentence to @sentence' do
      sentence = Sentence.create(text: 'This is a sentence.')

      get :show, params: { id: sentence.id }

      expect(assigns(:sentence)).to eq(sentence)
    end

    it 'renders the show template' do
      sentence = Sentence.create(text: 'This is a sentence.')

      get :show, params: { id: sentence.id }

      expect(response).to render_template(:show)
    end
  end
end
