class CreateZhibiaos < ActiveRecord::Migration[5.0]
  def change
    create_table :zhibiaos do |t|
      t.text :sj
      t.text :cj
      t.text :xh
      t.text :ss
      t.text :yb
      t.text :nz
      t.text :qd
      t.text :sd
      t.text :md
      t.text :ft
      t.text :zf
      t.text :ys
      t.text :wg
      t.text :yh
      t.text :sz
      t.text :lh

      t.timestamps
    end
  end
end
