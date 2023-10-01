class AddContentToResponses < ActiveRecord::Migration[7.0]
  def change
    add_column :responses, :content, :text
  end
end
