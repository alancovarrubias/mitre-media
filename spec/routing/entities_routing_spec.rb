require 'rails_helper'

RSpec.describe EntitiesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(post: '/sentences/1/entities').to route_to('entities#create', sentence_id: '1')
    end
  end
end
