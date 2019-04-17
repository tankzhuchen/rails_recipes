class CreateWls < ActiveRecord::Migration[5.0]
  def change
    create_table :wls do |t|
      t.text :title
      t.text :description
      t.text :quantity
      t.text :price

      t.timestamps
    end
  end
end
