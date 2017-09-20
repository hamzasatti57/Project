class RemoveGenderFromUpdates < ActiveRecord::Migration[5.1]
  def change
    remove_column :updates, :Gender, :boolean
  end
end
