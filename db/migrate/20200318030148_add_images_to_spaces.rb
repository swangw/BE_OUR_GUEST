class AddImagesToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :images, :string, array: true, default: []
  end
end
