class RemoveColumnFromTickets < ActiveRecord::Migration[7.0]
  def change
    remove_column :tickets, :description, :string
  end
end
