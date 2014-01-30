class MakeYellsPolymorphic < ActiveRecord::Migration
  def up
    remove_column :yells, :body
    add_column :yells, :content_type, :string
    add_column :yells, :content_id, :integer
    add_index :yells, [:content_type, :content_id]
  end

  def down
    remove_index :yells, [:content_type, :content_id]
    remove_column :yells, :content_type, :string
    remove_column :yells, :content_id, :integer
    add_column :yells, :body
  end
end
