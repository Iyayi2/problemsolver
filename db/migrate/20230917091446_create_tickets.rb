class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
