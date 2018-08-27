class OrdersController < ApplicationController

  def index
    @orders = Order.where(customer_id: current_user.id ).page(params[:page]).per 3
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      render :show
    else
      render :new
    end
  end
  def show
    @order = Order.find_by id: params[:id]
  end
  private

  def order_params
    params.require(:order).permit :room_id, :customer_id, :owner_id, :date_start, :date_end, :number_person, :address,
      :state, :number_bike, :number_motobike, :description
  end

end

