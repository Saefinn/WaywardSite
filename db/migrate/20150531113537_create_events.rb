class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps null: false
    end
    
    add_column :events, :user_id, :integer
    add_index :events, :user_id
    
  end
end
