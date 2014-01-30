class Yell < ActiveRecord::Base
  belongs_to :user
  default_scope { order("created_at DESC") }
  belongs_to :content, polymorphic: true

  def self.text_yells
    where(content_type: "TextYell")
  end

end
