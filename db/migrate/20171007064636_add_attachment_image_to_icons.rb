class AddAttachmentImageToIcons < ActiveRecord::Migration[5.1]
  def self.up
    change_table :icons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :icons, :image
  end
end
