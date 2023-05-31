require 'rails_helper'

RSpec.describe EntitiesController, type: :controller do
  describe 'POST create' do
    it 'should create entity and redirect to sentence show page' do
      sentence = Sentence.create(text: 'This is a sentence.')
      entity_count_before = sentence.entities.count

      post :create, params: { sentence_id: sentence.id, entity: { text: 'is', entity_type: 'New Entity' } }
      sentence.reload
      entity_count_after = sentence.entities.count

      assert_equal entity_count_before + 1, entity_count_after
      expect(assigns(:sentence)).to eq(sentence)
      assert_redirected_to sentence_path(sentence)
      assert_equal 'Entity created successfully.', flash[:notice]
    end
  end
end
