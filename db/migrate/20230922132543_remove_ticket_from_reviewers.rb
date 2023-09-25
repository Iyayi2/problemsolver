class RemoveTicketFromReviewers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviewers, :ticket, null: false, foreign_key: true
  end
end
