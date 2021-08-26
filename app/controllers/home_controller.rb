class HomeController < ApplicationController
  def show
    @games = Game.all
    @blocks = Block.all
  end
end
