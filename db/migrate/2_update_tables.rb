class UpdateTables < ActiveRecord::Migration
  
  def change 

    change_table :lends do |t|
      t.date :due
      t.date :checkin
      t.date :checkout
    end

    change_table :users do |t|
      t.integer :points, default: 100
    end

  end

end