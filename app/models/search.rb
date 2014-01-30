class Search < ActiveRecord::Base
  attr_reader :term

  def initialize(options = {})
    @term = options.fetch(:term, "")
  end

  def yells
    Yell.text_yells.where(content_id: text_yells)
  end

private
  def text_yells
    TextYell.where("body LIKE ?", search_term)
  end

  def search_term
    "%#{term}%"
  end
end
