class CreateTables < ActiveRecord::Migration

  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.timestamps null: false
      t.references :user
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :username
      t.string :email
      t.boolean :logged_in
      t.timestamps null: false
    end

    create_table :upvotes do |t|
      t.references :track
      t.references :user
      t.timestamps null: false
    end 

  end

end