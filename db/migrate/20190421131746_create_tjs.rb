class CreateTjs < ActiveRecord::Migration[5.0]
  def change
    create_table :tjs do |t|
      t.text :title
      t.text :description
      t.text :quantity
      t.text :price
      t.text :time

      t.timestamps
    end
  end
end
