class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # ↑の(user_params)があることで↓のdef user_paramsが呼び出される
    redirect_to user_path(current_user)
  end

private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
