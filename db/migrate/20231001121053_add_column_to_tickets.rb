class AddColumnToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :description, :text
  end
end
