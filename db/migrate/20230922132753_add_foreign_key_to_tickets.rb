class AddForeignKeyToTickets < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :reviewer, null: false, foreign_key: true
  end
end
