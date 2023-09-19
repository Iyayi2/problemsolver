class Ticket < ApplicationRecord
  belongs_to :user
  has_one :reviewer
  has_many :responses

  validates :category, presence: true
  validates :description, presence: true
end
