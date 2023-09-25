class Reviewer < ApplicationRecord
  belongs_to :user
  has_many :tickets, dependent: :destroy
  has_many :responses

  validates :first_name, presence: true
end
