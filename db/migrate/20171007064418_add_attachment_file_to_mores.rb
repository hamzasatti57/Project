class AddAttachmentFileToMores < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mores do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :mores, :file
  end
end
