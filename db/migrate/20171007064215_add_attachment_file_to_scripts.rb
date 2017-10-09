class AddAttachmentFileToScripts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :scripts do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :scripts, :file
  end
end
