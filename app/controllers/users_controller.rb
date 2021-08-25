class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @games = Game.all
    @user1 = User.find(1)
  end
end
