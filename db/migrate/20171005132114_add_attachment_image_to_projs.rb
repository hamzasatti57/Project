class AddAttachmentImageToProjs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :projs, :image
  end
end
