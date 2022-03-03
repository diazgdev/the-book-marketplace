class Wallet < ApplicationRecord
  belongs_to :buyer
  # before_save :create_wallet

  # def balance

  # end

  # private

  def create_wallet
    balance = 50.0
  end
end
