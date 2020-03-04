class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :boulangerie
  validates :star, presence: true
end
