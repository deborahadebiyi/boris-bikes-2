class DockingStation
  attr_reader :available_bikes

  def initialize
   @available_bikes = []
  end

  def release_bike
    fail 'No bikes available' if @available_bikes.empty?

    return @available_bikes.pop
  end

  def dock_bike(returned_bike)
    fail 'Dock full' if full?
    @available_bikes.push(returned_bike)
  end

 private
 def full?
   if @available_bikes.length >= 20
     return true
   else
     return false
   end
 end

end


class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
