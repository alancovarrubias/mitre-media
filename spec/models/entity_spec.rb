require 'rails_helper'

RSpec.describe Entity, type: :model do
  it 'FactoryBot is valid' do
    expect(FactoryBot.build(:entity)).to be_valid
  end 
end