class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug, :limit => 50
      t.string :description

      t.timestamps
    end
  end
end
