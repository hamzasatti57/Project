class AddAttachmentFileToThemes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :themes do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :themes, :file
  end
end
