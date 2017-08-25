class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :dashboard]

  def show
    @message = params[:message] if params[:message]
    @message ||= false
    @events = @user.events.joins(:the_date).order("the_dates.date_time ASC")
  end

  def dashboard
    if @user != current_user
      redirect_to 'show'
    end
    @friends = Friendship.where(friend_id: current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to user_path(@user), notice: "Welcome!" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

def deleteevent
    @event = Event.find(params[:id])
    current_user.delete_event(@event)
    current_user.save
    redirect_to user_path(current_user)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :password,
        :username,
        :bio,
        :location_id
      )
    end
end
