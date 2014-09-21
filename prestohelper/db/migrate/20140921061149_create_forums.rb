class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.boolean :colaborator_status
      t.integer :stars
      t.integer :reviews

      t.timestamps
    end
  end
end
