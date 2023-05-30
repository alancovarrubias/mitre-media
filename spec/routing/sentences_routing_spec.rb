require 'rails_helper'

RSpec.describe SentencesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/sentences').to route_to('sentences#index')
    end

    it 'routes to #show' do
      expect(get: '/sentences/1').to route_to('sentences#show', id: '1')
    end
  end
end
