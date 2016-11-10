require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Capacity is full" if @bikes.count  >= 20
    @bikes << bike
    @bikes.any?
  end

end
