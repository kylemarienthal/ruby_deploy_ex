module RpgsHelper
  def updateGold building
    gold = 0
    buildings = {
      farm: 10..20,
      cave: 5..10,
      house: 2..5,
      casino: -50..50
    }
    building = building.to_sym
    if buildings.has_key? building
      gold = rand(buildings[building])
      session[:gold] += gold
    end
    return gold
  end

  def addActivity gold, building
    color = 'green'
    if gold < 0
      color = 'red'
      message = "Entered a casino and lost #{gold} golds...bummer...:("
    else
      message = "Earned #{gold} golds from the #{params[:building]}"
    end
    p color
    puts ["*"].map{|n| n * 50},
    activity = {
      message: message,
      color: color
    }


    session[:activities].unshift activity

  end
end
