class AddUserRefToProjs < ActiveRecord::Migration[5.1]
  def change
    add_reference :projs, :user, foreign_key: true
  end
end
