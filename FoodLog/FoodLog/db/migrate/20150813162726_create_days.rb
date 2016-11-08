class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :title
      t.text :breakfast
      t.string :b_syns
      t.text :lunch
      t.string :l_syn
      t.text :dinner
      t.string :d_syns
      t.text :snacks
      t.string :s_syns
      t.date_time :date

      t.timestamps null: false
    end
  end
end
