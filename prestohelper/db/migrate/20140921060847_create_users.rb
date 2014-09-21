class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.date :birthdate
      t.datetime :last_login
      t.datetime :last_update
      t.string :gender
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
