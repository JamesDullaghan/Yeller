class FollowingRelationshipsController < ApplicationController

  def create
    current_user.follow(user)
    redirect_to user, notice: "You have followed #{user.username}"
  end

  def destroy
    current_user.unfollow(user)
    redirect_to user, notice: "You have unfollowed #{user.username}"
  end

private

  def user
    @_user ||= User.find(params[:user_id])
  end

  def current_followed_users
    current_user.followed_users
  end
end
