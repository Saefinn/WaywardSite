class AddSectionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :section, :string
  end
end
