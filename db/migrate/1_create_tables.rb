class CreateTables < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :picture_url, default: 'http://i.imgur.com/vUmohYJ.jpg'
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end

    create_table :books do |t|
      t.references :user
      t.string :title
      t.string :author
      t.string :description
      t.string :isbn
      t.string :picture_url, default: 'http://i.imgur.com/Ibd6JdC.jpg'
      t.timestamps null: false
    end

    create_table :lends do |t|
      t.references :user
      t.references :book
      t.integer :borrower_id
      t.timestamps null: false
    end

  end

end