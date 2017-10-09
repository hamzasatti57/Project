class AddUserRefToUpdates < ActiveRecord::Migration[5.1]
  def change
    add_reference :updates, :user, foreign_key: true
  end
end
