class AdminController < ApplicationController
  def index; end

  def account
    @users = User.all.page(params[:page]).per Settings.per_page
  end
end
