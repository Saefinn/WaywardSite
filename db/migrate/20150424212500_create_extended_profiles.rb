class CreateExtendedProfiles < ActiveRecord::Migration
  def change
    add_column :users, :description, :text
    add_column :users, :character_names, :string
  end
end
