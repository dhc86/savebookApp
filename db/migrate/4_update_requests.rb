class UpdateRequests < ActiveRecord::Migration
  def change
    change_table :requests do |t|
      t.timestamps
    end
  end
end