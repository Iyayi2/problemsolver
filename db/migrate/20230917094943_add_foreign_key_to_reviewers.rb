class AddForeignKeyToReviewers < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviewers, :user, null: false, foreign_key: true
  end
end
