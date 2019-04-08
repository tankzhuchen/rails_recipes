class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.string :title
      t.text :description
      t.text :quantity
      t.text :price

      t.timestamps
    end
  end
end
