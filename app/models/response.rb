class Response < ApplicationRecord
  belongs_to :user
  belongs_to :reviewer
  belongs_to :ticket

  validates :content, presence: true
end
