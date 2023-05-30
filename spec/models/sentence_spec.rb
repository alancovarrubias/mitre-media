require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it 'FactoryBot is valid' do
    expect(FactoryBot.build(:sentence)).to be_valid
  end 
end
