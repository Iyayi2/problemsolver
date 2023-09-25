class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :reviewer
  has_one :response, dependent: :destroy

  # def responses?
  #   response.any?
  # end

  validates :category, presence: true
  validates :description, presence: true
end
