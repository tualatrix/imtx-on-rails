class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :limit => 64
      t.text :content
      t.datetime :date
      t.string :post_type, :limit => 20
      t.string :status, :limit => 20
      t.string :comment_status, :limit => 20
      t.integer :category_id

      t.timestamps
    end
  end
end
