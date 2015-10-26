class CreateReviews < ActiveRecord::Migration

  def change
    create_table :reviews do |t|
      t.references :user
      t.references :book
      t.integer :rating
      t.timestamps null: false
    end
  end

end