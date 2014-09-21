class CreateUserfacebooks < ActiveRecord::Migration
  def change
    create_table :userfacebooks do |t|
      t.string :facebook_uid
      t.string :access_token
      t.string :faceboook_page

      t.timestamps
    end
  end
end
