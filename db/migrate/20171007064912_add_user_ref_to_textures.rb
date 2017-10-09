class AddUserRefToTextures < ActiveRecord::Migration[5.1]
  def change
    add_reference :textures, :user, foreign_key: true
  end
end
