class AddAttachmentFileToProjs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projs do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :projs, :file
  end
end
