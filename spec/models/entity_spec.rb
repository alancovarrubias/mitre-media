require 'rails_helper'

RSpec.describe Entity, type: :model do
  it 'FactoryBot is valid' do
    expect(FactoryBot.build(:entity)).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:sentence) }
  end

  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:entity_type) }
  end
end
