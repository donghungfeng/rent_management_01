class Admin::OrdersController < Admin::BaseController
  layout "admin"
  def admin_order
    @admin_orders = Order.all
  end
  def owner_order
    @owner_orders = Order.find_by owner_id: current_user.id
  end
end
