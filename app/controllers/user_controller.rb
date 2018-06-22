class UserController < ApplicationController

  def edit
    @user = current_user
  end
end
