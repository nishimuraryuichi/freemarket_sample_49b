class RenameImageColumnToProducts < ActiveRecord::Migration[5.2]
  def up
    rename_column :products, :image, :images
  end
  def down
    rename_column :products, :images, :image
  end
end