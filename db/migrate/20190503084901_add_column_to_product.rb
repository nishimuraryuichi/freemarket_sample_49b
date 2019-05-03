class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :detail, :text, null: false
add_column :products, :parent_category_id, :integer, null:false
add_column :products, :status_id, :integer, null:false
add_column :products, :delivery_fee_id, :integer, null:false
add_column :products, :prefecture_id, :integer, null:false
add_column :products, :preparation_id, :integer, null:false
  end
end
