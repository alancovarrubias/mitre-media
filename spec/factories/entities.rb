FactoryBot.define do
  factory :entity do
    association :sentence
    text { 'Mock entity text.' }
    entity_type { 'Mock entity type.' }
  end
end
