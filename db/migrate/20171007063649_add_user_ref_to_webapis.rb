class AddUserRefToWebapis < ActiveRecord::Migration[5.1]
  def change
    add_reference :webapis, :user, foreign_key: true
  end
end
