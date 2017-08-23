class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    @friendship.user_id = current_user.id
    @friendship.friend_id = params[:friend_id]
    @friendship.save
    redirect_to dashboard_path(current_user)
  end

  def destroy
  end
end
