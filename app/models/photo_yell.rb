class PhotoYell < ActiveRecord::Base
  has_attached_file :image, styles: {
    yell: "200x200>"
  }
end
