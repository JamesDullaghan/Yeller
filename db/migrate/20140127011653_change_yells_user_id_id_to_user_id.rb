class ChangeYellsUserIdIdToUserId < ActiveRecord::Migration
  def change
    rename_column :yells, :user_id_id, :user_id
  end
end
