module ApplicationHelper

  def assigned
    @game = Game.find(params[:id])
    @assignment = @game.assignment
    @assignment.fourth_official_id.present?
  end 
end
