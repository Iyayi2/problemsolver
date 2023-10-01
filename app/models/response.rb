class Response < ApplicationRecord
  belongs_to :user
  belongs_to :reviewer
  belongs_to :ticket

  has_rich_text :content

  validates :content, presence: true
end
