class CreateTextYells < ActiveRecord::Migration
  def change
    create_table :text_yells do |t|
      t.string :body
    end
  end
end
