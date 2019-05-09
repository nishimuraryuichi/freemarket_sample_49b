class RemoveImagesFromProducts < ActiveRecord::Migration[5.2]
  def up
    remove_column :products, :images
  end
  def down
    add_column :products, :images, :string
  end
end
