class Timeline
  include ActiveModel::Model

  def initialize(user)
    @user = user
  end

  def yells
    Yell.where(user_id: yell_user_ids)
  end

private
  def yell_user_ids
    [@user.id] + @user.followed_user_ids
  end
end
