class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.name.downcase!

    if @user.save
      flash[:success] = 'User created succesfully'
      redirect_to log_in_path
    else
      flash.now[:danger] = 'Something went wrong, please check the errors'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
