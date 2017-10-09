class AddUserRefToThemes < ActiveRecord::Migration[5.1]
  def change
    add_reference :themes, :user, foreign_key: true
  end
end
