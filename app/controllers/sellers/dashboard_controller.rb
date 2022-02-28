class Sellers::DashboardController < ApplicationController
  def index
    @seller = current_seller
  end
end
