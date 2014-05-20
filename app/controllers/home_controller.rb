class HomeController < ApplicationController
  def index

    unless current_user.nil?
      redirect_to employees_path
      return
    else
      redirect_to sign_in_path
      return
    end
  end
end
