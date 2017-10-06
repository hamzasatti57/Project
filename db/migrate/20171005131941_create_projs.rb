class CreateProjs < ActiveRecord::Migration[5.1]
  def change
    create_table :projs do |t|
      t.string :item_level
      t.string :category
      t.string :name
      t.string :description
      t.string :layered
      t.string :layout
      t.string :high_resolution
      t.string :live_demo
      t.string :tags
      t.numeric :price
      t.string :comment
      t.boolean :licence

      t.timestamps
    end
  end
end
