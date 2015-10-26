class UpdateReviews < ActiveRecord::Migration

  def change
    change_table :reviews do |t|
      t.column :text, :string
    end
  end

end