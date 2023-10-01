class RemoveContentFromResponses < ActiveRecord::Migration[7.0]
  def change
    remove_column :responses, :content, :string
  end
end
