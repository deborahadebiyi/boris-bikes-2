class DockingStation
  attr_reader :available_bikes

  def initialize
   @available_bikes
  end

  def release_bike
    fail 'No bikes available' if @available_bikes == nil

    return @available_bikes
  end

  def dock_bike(returned_bike)
   @available_bikes = returned_bike
  end

end


class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
