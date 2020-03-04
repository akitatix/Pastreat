class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :boulangerie
  validates :price, presence: true
  validates :date, presence: true
  validates :nb_pc, presence: true
  validates :nb_cr, presence: true
end
