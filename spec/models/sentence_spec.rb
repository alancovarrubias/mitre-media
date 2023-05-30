require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it 'FactoryBot is valid' do
    expect(FactoryBot.build(:sentence)).to be_valid
  end

  describe 'associations' do
    it { should have_many(:entities) }
  end

  describe 'validations' do
    it { should validate_presence_of(:text) }
  end
end
