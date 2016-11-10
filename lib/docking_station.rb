require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
    raise "No bikes available" if @bike.empty?
    @bike.pop
  end

  def dock_bike(bike)
    raise "Capacity is full" if @bike.count  >= 1
    @bike << bike
    @bike.any?
  end

end
