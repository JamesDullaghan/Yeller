class CreatePhotoYells < ActiveRecord::Migration
  def change
    create_table :photo_yells do |t|
      t.attachment :image
    end
  end
end
