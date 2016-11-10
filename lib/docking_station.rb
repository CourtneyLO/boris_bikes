require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise "No bikes available" if @bike.nil?
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

end
