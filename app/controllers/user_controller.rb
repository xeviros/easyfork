class UserController < ApplicationController
  skip_after_action :verify_authorized

  def edit
    @user = current_user
  end
end
