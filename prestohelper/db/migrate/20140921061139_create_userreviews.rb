class CreateUserreviews < ActiveRecord::Migration
  def change
    create_table :userreviews do |t|
      t.integer :rating

      t.timestamps
    end
  end
end
