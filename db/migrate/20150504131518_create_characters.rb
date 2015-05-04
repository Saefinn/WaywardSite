class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.string :title
      t.text :description
      t.string :traits
      t.string :skills
      t.text :history
      t.string :strength
      t.string :vitality
      t.string :agility
      t.string :dexterity
      t.string :intelligence
      t.string :mind

      t.timestamps null: false
    end
  end
end
