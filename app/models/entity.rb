class Entity < ApplicationRecord
  belongs_to :sentence
  validates_presence_of :text, :entity_type
end
