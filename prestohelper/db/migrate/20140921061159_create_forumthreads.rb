class CreateForumthreads < ActiveRecord::Migration
  def change
    create_table :forumthreads do |t|
      t.string :title
      t.string :body
      t.boolean :post_private
      t.datetime :creation_date

      t.timestamps
    end
  end
end
