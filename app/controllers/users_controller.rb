class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = "error"
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = "Success"
      redirect_to @user
    else
      render :new
    end
  end

   def destroy
    @user = User.find_by id: params[:id]
    @user.destroy
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :phone, :address,
      :stk, :account, :role, :password, :password_confirmation
  end
end
