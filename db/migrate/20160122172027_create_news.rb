class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :Title
      t.text :Content

      t.timestamps null: false
    end
  end
end
