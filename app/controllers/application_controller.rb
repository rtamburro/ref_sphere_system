class ApplicationController < ActionController::Base
  before_action :set_beginning_of_week, if: :user_signed_in?

  private

    def set_beginning_of_week
      Date.beginning_of_week = config.beginning_of_week = :sunday
    end
end

