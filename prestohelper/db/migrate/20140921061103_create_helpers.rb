class CreateHelpers < ActiveRecord::Migration
  def change
    create_table :helpers do |t|
      t.datetime :creation_date
      t.string :information

      t.timestamps
    end
  end
end
