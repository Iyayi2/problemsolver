class RemoveFirstNameFromReviewers < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviewers, :first_name, :string
  end
end
