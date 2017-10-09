class AddAttachmentImageToTextures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :textures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :textures, :image
  end
end
