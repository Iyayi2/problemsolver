class AddForeignKeysToResponses < ActiveRecord::Migration[7.0]
  def change
    add_reference :responses, :user, null: false, foreign_key: true
    add_reference :responses, :reviewer, null: false, foreign_key: true
    add_reference :responses, :ticket, null: false, foreign_key: true
  end
end
