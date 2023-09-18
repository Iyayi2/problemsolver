class CreateReviewers < ActiveRecord::Migration[7.0]
  def change
    create_table :reviewers do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
