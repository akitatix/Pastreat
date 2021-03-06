class User < ApplicationRecord
  has_many :ratings
  has_many :reservations
  belongs_to :boulangerie, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
