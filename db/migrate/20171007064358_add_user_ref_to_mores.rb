class AddUserRefToMores < ActiveRecord::Migration[5.1]
  def change
    add_reference :mores, :user, foreign_key: true
  end
end
