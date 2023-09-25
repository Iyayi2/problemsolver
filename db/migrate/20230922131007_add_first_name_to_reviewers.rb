class AddFirstNameToReviewers < ActiveRecord::Migration[7.0]
  def change
    add_column :reviewers, :first_name, :string
  end
end
