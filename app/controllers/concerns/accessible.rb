module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_resource
  end

  protected

  def check_resource
    if buyer_signed_in?
      flash.clear
      redirect_to(buyers_authenticated_root_path) and return
    elsif seller_signed_in?
      flash.clear
      redirect_to(sellers_authenticated_root_path) and return
    end
  end
end
