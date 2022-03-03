# frozen_string_literal: true

class Sellers::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_resource, except: [:new, :create]

  private

  def sign_up_params
    params.require(:seller).permit(:email, :password, :name, :phone)
  end

end
