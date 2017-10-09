class AddAttachmentFileToTextures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :textures do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :textures, :file
  end
end
