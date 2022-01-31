class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_param)
    if @user.save 
      @profile=Profile.new(user_id:@user.id)
      @profile.save
      flash[:success] = "You are signed up! Please login."
      redirect_to login_path
    else
      flash[:danger]= @user.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def users_param
    params.require(:user).permit(:name, :email, :password)
  end
end
