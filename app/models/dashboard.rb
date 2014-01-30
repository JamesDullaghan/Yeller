class Dashboard
  def initialize(user)
    @user = user
  end

  def new_text_yell
    TextYell.new
  end

  def new_photo_yell
    PhotoYell.new
  end

  def timeline
    Timeline.new(@user)
  end
end
