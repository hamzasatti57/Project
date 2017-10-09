class AddAttachmentImageToMobapps < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mobapps do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mobapps, :image
  end
end
