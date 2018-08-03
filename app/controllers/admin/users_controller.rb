class Admin::UsersController < ApplicationController
  layout "admin"
  def account
    @users = User.all.page(params[:page]).per Settings.per_page
  end
end
