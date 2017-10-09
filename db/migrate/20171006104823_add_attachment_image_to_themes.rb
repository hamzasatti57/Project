class AddAttachmentImageToThemes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :themes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :themes, :image
  end
end
