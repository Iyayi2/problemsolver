class RemoveReviewerIdFromTickets < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tickets, :reviewer, null: false, foreign_key: true
  end
end
