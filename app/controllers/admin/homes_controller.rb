class Admin::HomesController < ApplicationController
  layout "admin"
  before_action :set_home, only: [:edit, :update, :destroy]
  def index
    @homes = Home.where(user_id: current_user).page(params[:page]).per Settings.per_page
  end
 # GET /homes/new
  def new
    @admin_home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @admin_home = Home.new(admin_home_params)

    respond_to do |format|
      if @admin_home.save
        format.html { redirect_to admin_homes_path, notice: t("controllers.admin.homes_controller.create") }
        format.json { render :show, status: :created, location: admin/homes }
      else
        format.html { render :new }
        format.json { render json: @admin_home.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: t("controllers.admin.homes_controller.update") }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: t("controllers.admin.homes_controller.destroy") }
      format.json { head :no_content }
    end
  end

  def room
    @home = Home.find_by id: params[:id]
    @rooms = Room.where(home_id: params[:id]).page(params[:page]).per Settings.per_page
  end

  def new_room
    @home = Home.find_by id: params[:id]
    @admin_room = Room.new
  end

  def create_room
    @admin_room = Room.new(admin_room_params)

    respond_to do |format|
      if @admin_room.save
        format.html { redirect_to admin_homes_path, notice: t("controllers.admin.homes_controller.create") }
        format.json { render :show, status: :created, location: @admin_room }
      else
        format.html { render :new }
        format.json { render json: @admin_home.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_home
      @home = home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_home_params
      params.require(:home).permit(:district, :address, :room_number, :room_empty, :description, :user_id)
    end

    def admin_room_params
      params.require(:room).permit(:name, :area, :number_room, :state, :price, :description, :home_id, :image)
    end
end
