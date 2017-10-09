class AddAttachmentFileToMobapps < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mobapps do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :mobapps, :file
  end
end
