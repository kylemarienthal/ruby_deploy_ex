class RpgsController < ApplicationController
  include RpgsHelper
  def index
    @gold = session[:gold] ||= 0
    @activities = session[:activities] ||= []
  end

  def process_money
    gold = updateGold params[:building]
    addActivity gold, params[:building]

    return redirect_to root_path
  end
end
