class AddUserRefToMobapps < ActiveRecord::Migration[5.1]
  def change
    add_reference :mobapps, :user, foreign_key: true
  end
end
