class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :configure_permitted_parameters, if: :devise_controller?
  # helper_method :current_total
  # helper_method :current_cart

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :email, :password, :address])
  end



  # def current_total
  #   Cart.total_price(current_cart)
  # end

  # def current_cart
  #   cart = Cart.find_by(buyer_id: session[:buyer_id])
  #   cart || Cart.create(buyer_id: session[:buyer_id])
  # end

end
