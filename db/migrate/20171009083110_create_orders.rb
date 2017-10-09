class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :city
      t.string :state
      t.numeric :postal_code
      t.string :country
      t.string :modify

      t.timestamps
    end
  end
end
