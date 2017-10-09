class AddAttachmentFileToWebapis < ActiveRecord::Migration[5.1]
  def self.up
    change_table :webapis do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :webapis, :file
  end
end
