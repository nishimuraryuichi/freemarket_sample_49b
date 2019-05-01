class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.text   :introduction
      t.integer  :money, default: 0
      t.integer  :eva_good, default: 0
      t.integer  :eva_normal, default: 0
      t.integer  :eva_but, default: 0
      t.integer :user_id, foreign_key: true
      t.integer :prefecture_id, foreign_key: true
      t.timestamps
    end
  end
end
