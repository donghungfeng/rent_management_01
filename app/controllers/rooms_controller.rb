class RoomsController < ApplicationController
  def index
    @rooms = Room.all.page(params[:page]).per 7
  end

  def new
    @room = room.new
  end

  def show
    @room = Room.find_by id: params[:id]
  end

  def bookroom
    @room = Room.find_by id: params[:id]
  end
  def room_district
    home = Home.where(district: params[:id])
    @rooms = Room.where(home_id: home.ids).page(params[:page]).per 7
  end
end
