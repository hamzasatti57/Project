class AddAttachmentFileToIcons < ActiveRecord::Migration[5.1]
  def self.up
    change_table :icons do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :icons, :file
  end
end
