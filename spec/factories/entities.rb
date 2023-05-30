FactoryBot.define do
  factory :entity do
    association :sentence
    text { 'Mock entity text.' }
    type { 'Mock entity type.' }
  end
end
