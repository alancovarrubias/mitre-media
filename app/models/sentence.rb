class Sentence < ApplicationRecord
  has_many :entities
  validates_presence_of :text
end
