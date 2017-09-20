class AddAttachmentImageToUpdates < ActiveRecord::Migration[5.1]
  def self.up
    change_table :updates do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :updates, :image
  end
end
