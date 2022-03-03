class Buyers::DashboardController < ApplicationController
  def index
    @buyer = current_buyer
    @balance = current_buyer.wallet.balance
  end
end
