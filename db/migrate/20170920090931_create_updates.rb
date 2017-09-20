class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :Name
      t.numeric :Age
      t.string :Address
      t.boolean :Gender

      t.timestamps
    end
  end
end
