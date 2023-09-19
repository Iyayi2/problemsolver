class Reviewer < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  has_many :responses
end
