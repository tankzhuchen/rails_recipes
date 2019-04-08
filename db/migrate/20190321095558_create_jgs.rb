class CreateJgs < ActiveRecord::Migration[5.0]
  def change
    create_table :jgs do |t|
      t.text :title
      t.text :description
      t.text :quantity
      t.text :price
      t.text :piao
      t.text :time

      t.timestamps
    end
  end
end
