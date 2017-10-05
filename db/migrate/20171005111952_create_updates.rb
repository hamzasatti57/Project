class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :name
      t.string :user_name
      t.string :age
      t.string :gender
      t.string :company
      t.string :location
      t.string :phone
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
