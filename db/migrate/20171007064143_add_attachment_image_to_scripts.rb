class AddAttachmentImageToScripts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :scripts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :scripts, :image
  end
end
