class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototype.includes(:user)
  end
end
