class CreateItems < ActiveRecord::Migration
  def change
    
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.string :effect
      t.integer :modifier

      t.timestamps null: false
    end
    add_column :items, :character_id, :integer
    add_index :items, :character_id
  end
end
