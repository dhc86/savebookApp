class CreateRequests < ActiveRecord::Migration
  
  def change
    create_table :requests do |t|
      t.references :book
      t.integer :owner_id
      t.integer :borrower_id
      t.boolean :accepted, default: false
      t.boolean :attended_to, default: false
    end
  end

end